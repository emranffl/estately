
document.getElementById("nav-dashboard").addEventListener("click", myfunction => {
    // showing and hiding
    document.getElementById("dashboard").classList.remove("hidex");
    document.getElementById("customer").classList.remove("showx");
    document.getElementById("settings").classList.remove("showx");
    //changing active class for nav
    document.getElementById("nav-dashboard").classList.add("active");
    document.getElementById("nav-customer").classList.remove("active");
    document.getElementById("nav-settings").classList.remove("active");
})

document.getElementById("nav-customer").addEventListener("click", myfunction => {
    // showing and hiding
    document.getElementById("dashboard").classList.add("hidex");
    document.getElementById("customer").classList.add("showx");
    document.getElementById("settings").classList.remove("showx");
    //changing active class for nav
    document.getElementById("nav-dashboard").classList.remove("active");
    document.getElementById("nav-customer").classList.add("active");
    document.getElementById("nav-settings").classList.remove("active");
})

document.getElementById("nav-settings").addEventListener("click", myfunction => {
    // showing and hiding
    document.getElementById("dashboard").classList.add("hidex");
    document.getElementById("customer").classList.remove("showx");
    document.getElementById("settings").classList.add("showx");
    //changing active class for nav
    document.getElementById("nav-dashboard").classList.remove("active");
    document.getElementById("nav-customer").classList.remove("active");
    document.getElementById("nav-settings").classList.add("active");
})



