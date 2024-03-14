<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="internshipinvite.aspx.cs" Inherits="TrainingPlacement.InternshipPartner" %>

<!DOCTYPE html>
<html>
  <head>
    <title>Placement Partnership Invitation Form</title>
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
    <style>
      html, body {
      min-height: 100%;
      }
      body, div, form, input, select, textarea, p { 
      padding: 0;
      margin: 0;
      outline: none;
      font-family: Roboto, Arial, sans-serif;
      font-size: 14px;
      color: #666;
      line-height: 22px;
      }
      h1 {
      position: absolute;
      margin: 0;
      font-size: 32px;
      color: #fff;
      z-index: 2;
      }
      .testbox {
      display: flex;
      justify-content: center;
      align-items: center;
      height: inherit;
      padding: 20px;
      }
      form {
      width: 100%;
      padding: 20px;
      border-radius: 6px;
      background: #fff;
      box-shadow: 0 0 30px 0 #8ebf42; 
      }
      .banner {
      position: relative;
      height: 210px;
       
      background-color:#ff643e !important;
    
      background-size: cover;
      display: flex;
      justify-content: center;
      align-items: center;
      text-align: center;
      }
      .banner::after {
      content: "";
      background-color: rgba(0, 0, 0, 0.5); 
      position: absolute;
      width: 100%;
      height: 100%;
      }
      p.top-info {
      margin: 10px 0;
      }
      input, select, textarea {
      margin-bottom: 10px;
      border: 1px solid #ccc;
      border-radius: 3px;
      }
      input {
      width: calc(100% - 10px);
      padding: 5px;
      }
      select {
      width: 100%;
      padding: 7px 0;
      background: transparent;
      }
      textarea {
      width: calc(100% - 12px);
      padding: 5px;
      }
      .item:hover p, .item:hover i, .question:hover p, .question label:hover, input:hover::placeholder {
      color: #8ebf42;
      }
      .item input:hover, .item select:hover, .item textarea:hover {
      border: 1px solid transparent;
      box-shadow: 0 0 8px 0 #8ebf42;
      color: #8ebf42;
      }
      .item {
      position: relative;
      margin: 10px 0;
      }
      input[type="date"]::-webkit-inner-spin-button {
      display: none;
      }
      .item i, input[type="date"]::-webkit-calendar-picker-indicator {
      position: absolute;
      font-size: 20px;
      color: #a9a9a9;
      }
      .item i {
      right: 2%;
      top: 30px;
      z-index: 1;
      }
      [type="date"]::-webkit-calendar-picker-indicator {
      right: 1%;
      z-index: 2;
      opacity: 0;
      cursor: pointer;
      }
      input[type=radio] {
      width: 0;
      visibility: hidden;
      }
      label.radio {
      position: relative;
      display: inline-block;
      margin: 5px 20px 25px 0;
      cursor: pointer;
      }
      .question span {
      margin-left: 30px;
      }
      label.radio:before {
      content: "";
      position: absolute;
      left: 0;
      width: 17px;
      height: 17px;
      border-radius: 50%;
      border: 2px solid #8ebf42;
      }
      label.radio:after {
      content: "";
      position: absolute;
      width: 8px;
      height: 4px;
      top: 6px;
      left: 5px;
      background: transparent;
      border: 3px solid #8ebf42;
      border-top: none;
      border-right: none;
      transform: rotate(-45deg);
      opacity: 0;
      }
      input[type=radio]:checked + label:after {
      opacity: 1;
      }
      .btn-block {
      margin-top: 10px;
      text-align: center;
      }
      button {
      width: 150px;
      padding: 10px;
      border: none;
      border-radius: 5px; 
      background: #8ebf42;
      font-size: 16px;
      color: #fff;
      cursor: pointer;
      }
      button:hover {
      background: #82b534;
      }
      @media (min-width: 568px) {
      .name-item, .city-item {
      display: flex;
      flex-wrap: wrap;
      justify-content: space-between;
      }
      .name-item input, .city-item input {
      width: calc(50% - 20px);
      }
      .city-item select {
      width: calc(50% - 8px);
      }
      }
    </style>
  </head>
  <body>
    <div class="testbox">
      <form action="/" runat="server">
        <div class="banner">
          <h1>Call for Internship Partners</h1>
        </div>
        <div class="item">
          
          <div class="name-item">
            <input type="text" name="First" placeholder="First" />
            <input type="text" name="Last" placeholder="Last" />
          </div>

        </div>

           <div class="city-item">
        
          <input type="text" name="name" placeholder="Email"/>
                   <input type="text" name="name" placeholder="Phone"/>
        </div>

          <div class="city-item">
            <input type="text" name="Cname" placeholder="Company Name" />
            <input type="text" name="Website" placeholder="Website" />
            <input type="text" name="IndustrySector" placeholder="Industry Sector" />
            <input type="text" name="NumberofEmployees" placeholder="Number of Employees" />
          
              
          </div>

          <div class="city-item">
            <input type="text" name="POCName" placeholder="POC Name" />
            <input type="text" name="POCDesignation" placeholder="POCDesignation" />
            <input type="text" name="POCPrimaryContactNo" placeholder="POC Primary Contact No" />
            <input type="text" name="POCPrimaryE-mailID" placeholder="POC Primary E-mail ID" />
            <input type="text" name="CTC Offered (LPA)" placeholder="CTC Offered (LPA)" />
            <input type="text" name="Hiring for" placeholder="Hiring for" />
            <input type="text" name="Offer For" placeholder="Offer For" />
             <asp:FileUpload ID="FileUpload1" runat="server" />
           

          </div>

          <div class="item">
          <strong>Why Partner with Us: </strong>
              <p>
    Please briefly describe why your company is interested in partnering with us for placements:
    </p>
          <textarea rows="3"></textarea>
        </div>

          <div class="item">
          <strong>    Placement Opportunities: 
</strong>
              <p>
Which types of placement opportunities can your company offer to our students?
 </p>
          <textarea rows="3"></textarea>
        </div>

          <div class="item">
          <strong>Preferred Academic Disciplines: </strong>
              <p>Please specify the academic disciplines or majors that align with your placement opportunities:
 </p>
          <textarea rows="3"></textarea>
        </div>

          <div class="item">
          <strong>Location of Placement Opportunities: </strong>
              <p>
Where are your placement opportunities typically located?
</p>
          <textarea rows="3"></textarea>
        </div>


        <div class="btn-block">
          <button type="submit" href="/">Apply</button>
        </div>
      </form>
    </div>
  </body>
</html>
