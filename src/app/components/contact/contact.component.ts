import { Component } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';

@Component({
  selector: 'app-contact',
  imports: [CommonModule, FormsModule],
  templateUrl: './contact.component.html',
  styleUrl: './contact.component.scss'
})
export class ContactComponent {
  showSuccessMessage = false;
  
  formData = {
    firstName: '',
    lastName: '',
    email: '',
    subject: '',
    message: ''
  };

  onSubmit(event: Event) {
    event.preventDefault();
    
    // Store the current scroll position
    const currentScrollY = window.scrollY;
    
    // Show success message
    this.showSuccessMessage = true;
    
    // Reset the form data
    this.formData = {
      firstName: '',
      lastName: '',
      email: '',
      subject: '',
      message: ''
    };
    
    // Restore scroll position after a small delay to prevent jumping
    setTimeout(() => {
      window.scrollTo({
        top: currentScrollY,
        behavior: 'auto'
      });
    }, 0);
    
    // Hide the message after 5 seconds
    setTimeout(() => {
      this.showSuccessMessage = false;
    }, 5000);
    
    // Prevent any default scrolling behavior
    return false;
  }
}
