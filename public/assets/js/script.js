$('#selectSubjects, #questionAndAnswer, #qnaTest').hide();

// ! Global Variables
const urlLocalhost = 'http://localhost:4000';
let subjects = [];
let timerID;

$(document).ready(async () => {
  const schedulesData = await $.get(`${urlLocalhost}/getSchedulesData`);
  buildScheduleCards(schedulesData);
});

const buildScheduleCards = (data) => {
  const scheduleCards = $('#scheduleCards').empty();

  $.each(data, (idx, scheduleData) => {
    const { schedule_name, schedule_desc, schedule_img } = scheduleData;

    const card = $('<div>', { class: 'card' });
    const cardImg = $('<img>', { class: 'card_img', src: `./img/${schedule_img}` });
    const cardInfo = $('<div>', { class: 'card_info' }).append(
      $('<h2>', { style: 'margin-bottom: 0', text: schedule_name }),
      $('<h3>', { text: schedule_desc }),
      $('<button>', { class: 'btn_card', 'data-id': idx, text: 'Approfondisci' })
    );

    card.append(cardImg, cardInfo).appendTo(scheduleCards);
  });

  scheduleCards.on('click', '.btn_card', async (event) => {
    const scheduleID = $(event.currentTarget).data('id') + 1;
    const scheduleName = data[scheduleID - 1].schedule_name;
    const subjectsData = await $.get(`${urlLocalhost}/getSubjects`, { id: scheduleID });

    buildSelectSubjects(scheduleName, scheduleID, subjectsData);

    $('#homepage').fadeTo(250, 0, () => {
      $('#homepage').hide();
      $('#selectSubjects').fadeTo(250, 1);
    });
  });
};

const buildSelectSubjects = (scheduleName, scheduleID, data) => {
  const formOpt = $('#formOpt').empty();
  $('#formTitle').text(scheduleName);

  subjects.push(scheduleID);

  $.each(data, (_, subjectData) => {
    const { subject_id, subject_name } = subjectData;

    const optRow = $('<div>', { id: subject_id, class: 'opt_row' }).append(
      $('<span>', { class: 'opt_title', text: subject_name }),
      $('<input>', { type: 'checkbox', id: subject_id, class: 'opt_checkbox' })
    );

    formOpt.append(optRow);
  });

  const handleClick = (event) => {
    event.stopPropagation();
    const checkbox = $(event.currentTarget).find('.opt_checkbox');
    checkbox.prop('checked', !checkbox.prop('checked'));

    const subject = $(event.currentTarget).attr('id');
    const subjectName = $(event.target).closest('.opt_row').find('.opt_title').text();
    handleInput(subject, subjectName);
  };

  formOpt.on('click', '.opt_row', handleClick);
  formOpt.on('click', '.opt_checkbox', handleClick);

  $('#selectSubjects form').on('submit', async (event) => {
    event.preventDefault();

    buildQuestionAndAnswer(scheduleName);

    $('#selectSubjects').fadeTo(250, 0, () => {
      $('#selectSubjects').hide();
      $('#questionAndAnswer').fadeTo(250, 1);
    });
  });
};

const buildQuestionAndAnswer = (scheduleName) => {
  const subjectsList = $('#subjectsList').empty();

  $('#testName').text(`Test Indirizzo: ${scheduleName}`);
  $('<h3>', { style: 'margin-bottom: 0.75rem', text: 'Materie selezionate: ' }).prependTo(subjectsList);

  $.each(subjects, (index, subject) => {
    if (index === 0) return;

    const { name } = subject;
    const listItem = $('<li>', { text: name }).appendTo('<ul>');

    subjectsList.append(listItem);
  });

  $('#infoTest').on('submit', async (event) => {
    event.preventDefault();
    const subjectsSel = subjects.slice(1).map(obj => obj.id);
    const questionNum = subjectsSel.length <= 2 ? 5 : subjectsSel.length >= 3 && subjectsSel.length <= 8 ? 3 : 1;

    console.log(questionNum);

    const qnaData = await $.get(`${urlLocalhost}/getQAndA`, { scheduleID: subjects[0], subjectID: subjectsSel, questionNum: questionNum });

    console.log(qnaData);

    const timerDuration = 30 * 60;
    startTest(timerDuration, qnaData);

    $('#infoTest').fadeTo(250, 0, () => {
      $('#infoTest').hide();
      $('#qnaTest').fadeTo(250, 1);
    });
  });
};

const startTest = (duration, data) => {
  const timerText = $('#timerText');

  timerID = setInterval(() => {
    const min = Math.floor(duration / 60);
    const sec = duration % 60;
    const secConverted = sec < 10 ? `0${sec}` : `${sec}`;

    const timerString = sec === 0 ? `Tempo rimasto: ${min} minuti 00 secondi` : `Tempo rimasto: ${min} minuti ${secConverted} secondi`;

    timerText.text(timerString);

    duration--;

    if (duration < 0) {
      clearInterval(timerID);
      timerText.text('Tempo scaduto');
      return;
    }
  }, 1000);

  renderQuestion(data);
};

const renderQuestion = (data) => {
  const questionArray = [];
  const answerArray = [];
  let counterQuestion = 0;
  let testIsRunning = true;

  $.each(data, (_, innerArray) => {
    $.each(innerArray, (_, questionObj) => {
      const { question, answer } = questionObj;
      questionArray.push(question);
      answerArray.push(answer);
    });
  });

  const [shuffledQuestions, shuffledAnswers] = shuffleArrays(questionArray, answerArray);

  const renderQuestionFunction = () => {
    const questionWrap = $('#questionWrap').empty();

    if (testIsRunning) {
      const questionText = $('<h2>', { style: 'font-size: 1.5rem', text: shuffledQuestions[counterQuestion] });
      const btnNext = $('<button>', { type: 'button', id: 'nextQuestion', class: 'next_question', text: 'Next' });

      console.log(shuffledQuestions, shuffledAnswers);

      questionWrap.append(questionText, btnNext);
    } else {
      clearInterval(timerID);

      $.each(shuffledQuestions, (idx, _) => {
        const question = $('<h2>', { style: 'font-size: 1.5rem', text: shuffledQuestions[idx] });
        const answer = $('<h3>', { style: 'margin: 0 0 0.65rem 0, font-size: 1rem', text: shuffledAnswers[idx] });

        questionWrap.append(question, answer);
      });
    }

    $('#nextQuestion').on('click', (event) => {
      event.preventDefault();

      counterQuestion++;
      renderQuestionFunction();
    });

    if (counterQuestion === (questionArray.length - 1)) {
      $('#nextQuestion').text("Mostra risposte");
      testIsRunning = false;
    }
  };

  renderQuestionFunction();
};

// ! Utils
const scrollDown = () => {
  $('html, body').animate({ scrollTop: $('#schoolSchedules').offset().top }, 'slow');
};

const goToHome = () => {
  subjects = [];

  $('#formOpt').off('click', '.opt_row');
  $('#formOpt').off('click', '.opt_checkbox');

  $('#selectSubjects').fadeTo(250, 0, () => {
    $('#selectSubjects').hide();
    $('#homepage').fadeTo(250, 1, scrollDown);
  });
};

const goToSelectSubject = () => {
  $('#questionAndAnswer').fadeTo(250, 0, () => {
    $('#questionAndAnswer').hide();
    $('#selectSubjects').fadeTo(250, 1);
  });
};

const handleInput = (subject, subjectName) => {
  const index = subjects.findIndex(obj => obj.id === subject);
  index !== -1 ? subjects.splice(index, 1) : subjects.push({ id: subject, name: subjectName });

  subjects.length > 1 ? $('#selectSubjects button[type="submit"]').prop('disabled', false) : $('#selectSubjects button[type="submit"]').prop('disabled', true);
};

const shuffleArrays = (arr1, arr2) => {
  let currentIndex = arr1.length, temporaryValue, randomIndex;

  while (currentIndex !== 0) {
    randomIndex = Math.floor(Math.random() * currentIndex);
    currentIndex -= 1;

    temporaryValue = arr1[currentIndex];
    arr1[currentIndex] = arr1[randomIndex];
    arr1[randomIndex] = temporaryValue;

    temporaryValue = arr2[currentIndex];
    arr2[currentIndex] = arr2[randomIndex];
    arr2[randomIndex] = temporaryValue;
  };

  return [arr1, arr2];
};
