<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>

<portlet:defineObjects />
<style>
  .board-features {
    font-size: 16px;
    line-height: 1.5;
    margin: 4em 2.5em 12rem;
  }

  .board-features h1 {
    font-size: 28px;
    line-height: 1.2;
    margin-bottom: 1em;
  }

  .board-features h1 span,
  .board-features h2 {
    display: block;
    font-weight: 400;
    color: rgba(0, 0, 0, .56);
  }

  .board-features h3 {
    margin-top: 2em;
  }

  .board-features h5 {
    margin-bottom: 0.5em;
  }

  .board-features h5 + p {
    margin-top: 0.5em;
  }

  .board-features a {
    text-decoration: none;
    color: #03A9F4;
  }

  .board-features img,
  .board-features video {
    width: 100%;
  }

  .board-features p {
    max-width: 55em;
  }

  .board-features .button {
    margin: 0;
    border: 0;
    cursor: pointer;
    font-family: "Helvetica Neue",Helvetica,Arial,sans-serif;
    background-color: #00b4f0;
    color: #fff;
    font-size: 16px;
    line-height: 1;
    display: inline-block;
    padding: .6em .8rem;
    -webkit-border-radius: 4px;
    -moz-border-radius: 4px;
    border-radius: 4px;
  }

  .board-features .button:hover {
    background-color: #25c9ff;
  }

  .board-features demo-snippet vaadin-board-row div {
    align-items: center;
    background-color: #eee;
    box-shadow: inset 0 0 0 4px white;
    display: flex;
    justify-content: center;
    line-height: 1.2;
    padding: 1rem 0;
  }

  .board-features table.upcoming-features {
    border-collapse: collapse;
    color: #212121;
    font-size: 13px;
    line-height: 18px;
    max-width: 880px;
    width: 100%;
  }

  .board-features table.upcoming-features tr {
    box-shadow: inset 0 -1px 0 0 #dbdbdb;
  }

  .board-features table.upcoming-features td {
    padding-bottom: 15px;
    padding-top: 15px;
    padding-left: 24px;
    padding-right: 24px;
  }

  .board-features .sample-img-container img {
    margin: 0 .5rem;
  }

  .board-features pre[class*="language-"] {
    box-shadow: 0 2px 2px 0 rgba(0, 0, 0, 0.14), 0 1px 5px 0 rgba(0, 0, 0, 0.12), 0 3px 1px -2px rgba(0, 0, 0, 0.2);
  }

  .board-features code[class*="language-"],
  .board-features pre[class*="language-"] {
    background: #f5f5f5;
    font-size: 14px !important;
    font-family: monospace;
  }

  .board-features .hl {
    background-color: rgba(255, 238, 0, .5);
  }

  .board-features .board-code-sample-section {
    display: flex;
  }

  .board-features .board-code-sample-section__item:first-child {
    flex: 0 1 65%;
  }

  .board-features .board-code-sample-section__item:last-child {
    flex: 0 1 35%;
  }

  @media (max-width: 749px) {
    .board-features .board-code-sample-section {
      display: block;
    }
  }

  @media (min-width: 768px) and (max-width: 948px) {
    .board-features .board-code-sample-section {
      display: block;
    }
  }
</style>

<div class="board-features">

<h3>Responsive</h3>
<p>Responsive behaviour is built-in and doesn’t require any custom development, it just works. Layouting is done automatically based on screen size, while making sure all widgets use all of the available space.</p>
<video autoplay loop>
  <source src="<%=request.getContextPath()%>/examples/pro/board/board-demo.mp4" type="video/mp4">
</video>

<h3>Simple and easy to use API</h3>
<p>The Vaadin Board is divided into rows. Within a row you can use any HTML element with the HTML API or any Vaadin component with the Java API. Sizing, layouting and wrapping is automatic.</p>
<div class="board-code-sample-section">
  <div class="board-code-sample-section__item">
    <div class="code-container"><pre><code class="language-java">Board board = new Board();
board.addRow(new Label("1"), 
             new Label("2"), 
             new Label("3"));
board.addRow(new Label("4"), 
             new Label("5"));</code></pre></div>
  </div>

  <div class="board-code-sample-section__item">
    <div class="sample-img-container">
      <img src="<%=request.getContextPath()%>/examples/pro/board/img/board1.png" alt="Vaadin Board example layout 1">
    </div>
  </div>
</div>

<h3>Up to four columns supported</h3>
<p>Vaadin Board supports one to four columns on each row. Columns are wrapped in a predictable manner when the screen gets narrower, e.g from 4 to 2 and then to 1 column per row.</p>
<div class="board-code-sample-section">
  <div class="board-code-sample-section__item">
    <div class="code-container"><pre><code class="language-java">Board board = new Board();
board.addRow(new Label("1"), 
             new Label("2"), 
             new Label("3"), 
             new Label("4"));
board.addRow(new Label("5"), 
             new Label("6"),
             new Label("7")); 
board.addRow(new Label("8"), 
             new Label("9")); 
board.addRow(new Label("10"));</code></pre></div>
  </div>

  <div class="board-code-sample-section__item">
    <div class="sample-img-container">
      <img src="<%=request.getContextPath()%>/examples/pro/board/img/board2.png" alt="Vaadin Board example layout 2">
    </div>
  </div>
</div>

<h3>Nested rows</h3>
<p>You can have rows inside rows for more fine grained control of how certain areas of your layout behave on resize and how they are rendered.</p>
<div class="board-code-sample-section">
  <div class="board-code-sample-section__item">
    <div class="code-container"><pre><code class="language-java">Board board = new Board();
Row firstRow = board.addRow(new Label("1"), 
                            new Label("2"));
Row innerRow = new Row();
innerRow.addComponents(new Label("3A"),
                       new Label("3B"));
firstRow.addComponent(innerRow);

board.addRow(new Label("4"),
             new Label("5"));</code></pre></div>
  </div>

  <div class="board-code-sample-section__item">
    <div class="sample-img-container">
      <img src="<%=request.getContextPath()%>/examples/pro/board/img/board3.png" alt="Vaadin Board example layout 3">
    </div>
  </div>
</div>

<h3>Column span</h3>
<p>An element inside a vaadin-board-row can have a board-cols modifier for controlling the area used within the row. Choosing values of 2 or 3, you get to layout rows such as &frac14;-&frac12;-&frac14;, &frac13;-&frac23; or &frac34;-&frac14;.</p>
<div class="board-code-sample-section">
  <div class="board-code-sample-section__item">
    <div class="code-container"><pre><code class="language-java">Board board = new Board();
board.addRow(new Label("1"), 
             new Label("2"), 
             new Label("3"));
Label labelFour = new Label("4");
Row row = board.addRow(labelFour, 
                       new Label("5"));
row.setCols(labelFour, 2);</code></pre></div>
  </div>

  <div class="board-code-sample-section__item">
    <div class="sample-img-container">
      <img src="<%=request.getContextPath()%>/examples/pro/board/img/board4.png" alt="Vaadin Board example layout 4">
    </div>
  </div>
</div>

<h3>Potential upcoming features</h3>
<p>We are building a lot of cool new stuff to Vaadin Board and here are the things we have thought of. Please feel free to comment on these, say what you’d like to get next or propose something totally new.</p>
<table class="upcoming-features">
  <tr>
    <td>Java API for Vaadin Framework 8</td>
    <td>Coming in 1.1 release</td>
  </tr>
  <tr>
    <td>Easy API to control gutters, groupings and space</td>
    <td>Schedule not set</td>
  </tr>
  <tr>
    <td>Built-in support for headers, borders and control buttons</td>
    <td>Schedule not set</td>
  </tr>
  <tr>
    <td>Minimize and maximize widgets</td>
    <td>Schedule not set</td>
  </tr>
  <tr>
    <td>Reordering widgets with drag and drop, storing user layouts, widget menu</td>
    <td>Schedule not set</td>
  </tr>
  <tr>
    <td>Fine grained rules for widgets based on screen size</td>
    <td>Schedule not set</td>
  </tr>
  <tr>
    <td>Ready made widgets for images, tickers, tables, common charts, etc.</td>
    <td>Schedule not set</td>
  </tr>
 </table>

<div id="panel">
  <div id="form">
    <h4 style="margin: 2em 0 .5em;">Want to vote for your favourite, propose something new or just give feedback?</h4>
    <input type="hidden" name="name" value="Vaadin Board product page features"> <input
      type="hidden" name="idea" value="355150">
    <textarea id="feedback" name="feedback" cols="40" rows="5"
      style="border-radius: 5px;
             border: 1px solid #bbb;
             width: 100%;
             font-size: 1.15rem;
             padding: 10px;
             max-width: 100%;
             box-sizing: border-box;">It would be awesome if </textarea>
    <h3 style="margin: .5em 0 .5em; font-size: 1rem;">You can leave your email address if you want</h3>
    <input id="email" type="text" name="email" value="" placeholder="me@example.com" 
      style="border-radius: 5px;
             border: 1px solid #bbb;
             width: 100%;
             font-size: 1.25rem;
             padding: 10px;
             max-width: 100%;
             box-sizing: border-box;
             margin-bottom: .7em;">
    <button class="button" onclick="sendFeedback();">Give feedback</button> or <a href="https://vaadin.com/forum#!/category/15787052" target="_top">discuss on the forum</a>
  </div>
  <h3 id="message" style="display: none;">Thanks for your feedback</h3>
</div>

</div>

<script>
  document.querySelectorAll('.language-java')
    .forEach(function(e) { Prism.highlightElement(e); });

  function sendFeedback() {
    var feedback = document.getElementById('feedback');
    var form = document.getElementById('form');
    var response = document.getElementById('message');
    var request = new XMLHttpRequest();
    var email = document.getElementById('email');

    request.onreadystatechange = function() {
      if (request.readyState === 4) {
        form.style.display = 'none';
        response.style.display = 'block';
        if (request.status === 201) {
          response.innerHTML = 'Thanks for your feedback';
        } else {
          response.innerHTML = 'An error occurred while submitting the feedback';
        }
      }
    }

    if (feedback.value !== 'It would be awesome if ') {
      var formData = new FormData();
      formData.append('name', 'Vaadin Board product page features');
      formData.append('ideas[0][id]', '355150');
      formData.append('feedback', feedback.value);
      formData.append('email', email.value);
      request.open('POST', 'https://api.prodpad.com/v1/feedbacks?apikey=262ae208ca624b565962a1e204e2b231f595c39d427e680875561634d5c83d9c');
      request.send(formData);
    } else {
      feedback.focus();
    }
    return false;
  }

</script>
