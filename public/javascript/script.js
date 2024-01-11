/* https://codepen.io/romainnorberg/pen/WNbJWyp */

function typeForm(form) {
  this.form = form;
  this.inputBlocks = form.querySelectorAll('.input-block');

  this.init = function () {
    this.scrollListener();
    this.inputListener();
    this.clickListener();
    // this.submitListener();
  };

  this.scrollListener = function () {
    window.onscroll = function () {
      this.inputBlocks.forEach(function (el) {
        var etop = el.offsetTop;
        var diff = etop - window.scrollY;

        if (diff > 100 && diff < 300) {
          this.reinitState(el);
        }
      });
    };
  };

  this.inputListener = function () {
    // text fields
    this.form.querySelectorAll('.input-block input[type="text"]').forEach(function (el) {
      var that = this;
      el.onkeydown = function (ev) {
        if (ev.key == "Enter") {
          ev.preventDefault();
          if (el.classList.contains('required') && el.value == "") {
            //
          } else {
            that.moveNext(that.getClosest(el, '.input-block'));
          }
        }

      };
    });

    // radio fields
    this.form.querySelectorAll('.input-block input[type="radio"]').forEach(function (el) {
      var that = this;
      el.addEventListener('change', function (ev) {
        that.moveNext(that.getClosest(el, '.input-block'));
      });
    });
  };

  this.clickListener = function () {
    this.inputBlocks.forEach(function (el) {
      var that = this;
      el.addEventListener('click', function () {
        that.reScroll(el);
      });
    });
  };

  this.submitListener = function () {
    form.addEventListener('submit', function (ev) {
      ev.preventDefault();

      this.submit();
    });
  };

  this.moveNext = function (inputBlock) {
    if (inputBlock.nextElementSibling) {
      let nextInputBlock = inputBlock.nextElementSibling;
      this.reScroll(nextInputBlock);

      if (nextInputBlock.querySelector('input[type="text"]')) {
        nextInputBlock.querySelector('input[type="text"]').focus();
      }
    } else {
      this.submit();
    }
  };

  this.submit = function () {
    console.log('submit!');
  };

  this.reScroll = function (inputBlock) {
    window.scrollTo({
      top:      inputBlock.offsetTop - 200,
      left:     0,
      behavior: 'smooth'
    });
  };

  this.reinitState = function (inputBlock) {
    this.inputBlocks.forEach(function (el) {
      el.classList.remove('active');
    });

    inputBlock.classList.add('active');
  };

  this.getClosest = function (elem, selector) {

    // Element.matches() polyfill
    if (!Element.prototype.matches) {
      Element.prototype.matches =
        Element.prototype.matchesSelector ||
        Element.prototype.mozMatchesSelector ||
        Element.prototype.msMatchesSelector ||
        Element.prototype.oMatchesSelector ||
        Element.prototype.webkitMatchesSelector ||
        function (s) {
          var matches = (this.document || this.ownerDocument).querySelectorAll(s),
            i = matches.length;
          while (--i >= 0 && matches.item(i) !== this) {
          }
          return i > -1;
        };
    }

    // Get the closest matching element
    for (; elem && elem !== document; elem = elem.parentNode) {
      if (elem.matches(selector)) return elem;
    }

    return null;
  };

  this.init();
}

let forms = document.querySelectorAll('.quiz-form');
forms.forEach(form => typeForm(form));
