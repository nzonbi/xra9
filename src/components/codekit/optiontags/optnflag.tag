import { codeDo } from '../../../stores/codeStore.js'
import color from '../../../resInfo/color.js'


<optnflag>


  <div id="optpinpink" onclick={ pink } class="optcolor"></div>
  <div id="optpinred" onclick={ red } class="optcolor"></div>
  <div id="optpinoran" onclick={ oran } class="optcolor"></div>
  <div id="optpinyell" onclick={ yell } class="optcolor"></div>

  <div id="optpingren" onclick={ gren } class="optcolor"></div>
  <div id="optpinturq" onclick={ turq } class="optcolor"></div>
  <div id="optpinblu" onclick={ blu } class="optcolor"></div>
  <div id="optpinpurp" onclick={ purp } class="optcolor"></div>

  <div id="optup" onclick={ up } class="opt"></div>
  <div id="optdown" onclick={ down } class="opt"></div>
  <div id="optleft" onclick={ left } class="opt"></div>
  <div id="optright" onclick={ right } class="opt"></div>


  <script>
    this.pink = () => codeDo({ action: 'tokenColor', data: color.pink })
    this.red = () => codeDo({ action: 'tokenColor', data: color.red })
    this.oran = () => codeDo({ action: 'tokenColor', data: color.oran })
    this.yell = () => codeDo({ action: 'tokenColor', data: color.yell })

    this.gren = () => codeDo({ action: 'tokenColor', data: color.gren })
    this.turq = () => codeDo({ action: 'tokenColor', data: color.turq })
    this.blu = () => codeDo({ action: 'tokenColor', data: color.blu })
    this.purp = () => codeDo({ action: 'tokenColor', data: color.purp })

    this.up = () => codeDo({ action: 'tokenPoints', data: 3 })
    this.down = () => codeDo({ action: 'tokenPoints', data: 1 })
    this.left = () => codeDo({ action: 'tokenPoints', data: 2 })
    this.right = () => codeDo({ action: 'tokenPoints', data: 0 })
  </script>


  <style scoped>
    :scope {
      width: 100%;
      height: 100%;
      display: block;
    }
    .optcolor {
      width: 4vh;
      height: 4vh;
      position: absolute;
      background-size: 100% 100%;
    }
    #optpinpink {
      top: 1vh;
      left: 1.5vh;
      background-image: url('assets/img/options/optpink.svg');
    }
    #optpinred {
      top: 1vh;
      left: 5.5vh;
      background-image: url('assets/img/options/optred.svg');
    }
    #optpinoran {
      top: 1vh;
      left: 9.5vh;
      background-image: url('assets/img/options/optoran.svg');
    }
    #optpinyell {
      top: 1vh;
      left: 13.5vh;
      background-image: url('assets/img/options/optyell.svg');
    }
    #optpingren {
      top: 5vh;
      left: 1.5vh;
      background-image: url('assets/img/options/optgren.svg');
    }
    #optpinturq {
      top: 5vh;
      left: 5.5vh;
      background-image: url('assets/img/options/optturq.svg');
    }
    #optpinblu {
      top: 5vh;
      left: 9.5vh;
      background-image: url('assets/img/options/optblu.svg');
    }
    #optpinpurp {
      top: 5vh;
      left: 13.5vh;
      background-image: url('assets/img/options/optpurp.svg');
    }
    .opt {
      width: 4vh;
      height: 4vh;
      position: absolute;
      background-image: url('assets/img/options/optfuncparup.svg');
      background-size: 100% 100%;
    }
    #optup {
      left: 6vh;
      top: 9.5vh;
    }
    #optdown {
      left: 6vh;
      top: 14.5vh;
      transform: rotate(180deg);
    }
    #optleft {
      left: 2vh;
      top: 12vh;
      transform: rotate(-90deg);
    }
    #optright {
      left: 10vh;
      top: 12vh;
      transform: rotate(90deg);
    }
  </style>


</optnflag>
