package com.project.dto;

import java.util.Objects;

public class Card {

        private String card_num;
        private String card_type;
        private String email;

        public Card() {}

        public Card(String card_num, String card_type, String email) {
            this.card_num = card_num;
            this.card_type = card_type;
            this.email = email;
        }

        public String getCard_num() {
            return card_num;
        }

        public void setCard_num(String card_num) {
            this.card_num = card_num;
        }

        public String getCard_type() {
            return card_type;
        }

        public void setCard_type(String card_type) {
            this.card_type = card_type;
        }

        public String getEmail() {
            return email;
        }

        public void setEmail(String email) {
            this.email = email;
        }

        @Override
        public boolean equals(Object o) {
            if (this == o) return true;
            if (o == null || getClass() != o.getClass()) return false;
            Card card = (Card) o;
            return Objects.equals(card_num, card.card_num) && Objects.equals(card_type, card.card_type) && Objects.equals(email, card.email);
        }

        @Override
        public int hashCode() {
            return Objects.hash(card_num, card_type, email);
        }

        @Override
        public String toString() {
            return "Card{" +
                    "card_num='" + card_num + '\'' +
                    ", card_type='" + card_type + '\'' +
                    ", email='" + email + '\'' +
                    '}';
        }
}