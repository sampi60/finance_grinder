var Main = React.createClass({
  componentDidMount() {
    $(document).ready(function() {
      $(".button-collapse").sideNav();
      $('select').material_select();
      $('ul.tabs').tabs();
    });
  },

  render() {
    return (
      <div>
        <Header />
        <Body />
      </div>
    )
  }
})
