var Main = React.createClass({
  componentDidMount() {
    $(document).ready(function() {
      $('select').material_select();
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
