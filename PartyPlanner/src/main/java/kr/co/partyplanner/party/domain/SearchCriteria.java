package kr.co.partyplanner.party.domain;


public class SearchCriteria{
   
   /*카테고리별 검색*/
   private String category;
   
   /*장소별 검색*/
   private String place;
   
   /*비용으로 검색*/
   private int price;
   
   /*요일로 검색 1:일, 2:월, 3:화, 4:수, 5:목, 6:금, 7:토*/
   private String week;
   
   /*시간으로 검색*/
   private String time;
   
   /*파티기간으로 검색 시작기간*/
   private String startCal;
   
   /*파티기간으로 검색 시작기간*/
   private String endCal;
   
   /*최근순으로 검색*/
   private String lately;
   
   /*마감순으로 검색*/
   private String deadline;
   
   /*무한스크롤 num검색을 위한 변수 선언*/
   private int listnum;
   
   public SearchCriteria() {
      
   }
   public String getCategory() {
      return category;
   }
   public void setCategory(String category) {
      if(category.equals("")) {
         category = null;
         return;
      }
      this.category = category;
   }

   public String getPlace() {
      return place;
   }

   public void setPlace(String place) {
      if(place.equals("")) {
         place = null;
         return;
      }
      this.place = place;
   }

   public int getPrice() {
      return price;
   }

   public void setPrice(int price) {
      this.price = price;
   }

   public String getWeek() {
      return week;
   }

   public void setWeek(String week) {
      if(week.equals("")) {
         week = null;
         return;
      }
      this.week = week;
   }

   public String getTime() {
      return time;
   }

   public void setTime(String time) {
      if(time.equals("")) {
         time = null;
         return;
      }
      this.time = time;
   }

   public String getStartCal() {
      return startCal;
   }

   public void setStartCal(String startCal) {
      if(startCal.equals("")) {
         startCal = null;
         return;
      }
      this.startCal = startCal;
   }

   public String getEndCal() {
      return endCal;
   }

   public void setEndCal(String endCal) {
      if(endCal.equals("")) {
         endCal = null;
         return;
      }
      this.endCal = endCal;
   }
   public String getLately() {
      return lately;
   }
   public void setLately(String lately) {
      this.lately = lately;
   }
   public String getDeadline() {
      return deadline;
   }
   public void setDeadline(String deadline) {
      this.deadline = deadline;
   }
   public int getListnum() {
   return listnum;
   }
   public void setListnum(int listnum) {
   this.listnum = listnum;
   }
   @Override
      public String toString() {
      return "SearchCriteria [category=" + category + ", place=" + place + ", price=" + price + ", week=" + week
         + ", time=" + time + ", startCal=" + startCal + ", endCal=" + endCal + ", lately=" + lately + ", deadline="
         + deadline + ", listnum=" + listnum + "]";
   }
   
}