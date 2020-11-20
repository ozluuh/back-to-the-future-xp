window.onload = () => {
  const metric = {
    "large-and-up": 992
  };

  const windowInitialLoad = innerWidth > metric["large-and-up"] ? "desktop" : "mobile";

  const menuEl = document.querySelector(".menu");
  const menuTogglerEl = document.querySelector(".menu-toggler");
  const accordionButtonsEl = document.querySelectorAll(".accordion button");

  [...accordionButtonsEl].forEach(accordionButtonEl => {
    accordionButtonEl.bind
    
    accordionButtonEl.addEventListener("click", (e) => {
      toggler(e.target, "active");

      const accordionBodyEl = e.target.nextElementSibling;

      if(accordionBodyEl.style.maxHeight){
        accordionBodyEl.style.maxHeight = null;
      } else {
        accordionBodyEl.style.maxHeight = `${accordionBodyEl.scrollHeight}px`;
      }
    });
  });

  menuTogglerEl.addEventListener("click", (e) => {
    const targetEl = document.querySelector(`${e.target.getAttribute("data-target")}`);

    toggler(targetEl, "hide");
  });

  if(windowInitialLoad === "desktop") {
    toggler(menuEl, "hide");
  }

  window.addEventListener("resize", () => {
    
    if(innerWidth > metric["large-and-up"] && menuEl.classList.contains("hide")) {
       toggler(menuEl, "hide");
    }

    if(innerWidth < metric["large-and-up"] && !menuEl.classList.contains("hide")) {
      toggler(menuEl, "hide");
    }
  });

  function toggler(element, classname) {
    if(element.classList) {
      element.classList.toggle(classname);
    } else {
      // For IE9
      const classes = element.className.split(" ");
      const indexClass = classes.indexOf(classname);

      if(indexClass > -1) {
        classes.splice(indexClass, 1);
      } else {
        classes.push(classname);
        element.className = classes.join(" ");
      }
    }
  }

}
