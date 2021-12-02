import { CommonModule } from '@angular/common';
import { NgModule } from '@angular/core';

import { AuthenticationRoutingModule } from './authentication-routing.module';
import { AuthenticationComponent } from './container/authentication/authentication.component';
import { LoginComponent } from './container/login/login.component';
import { RegisterComponent } from './container/register/register.component';
import { ForgotPasswordComponent } from './container/forgot-password/forgot-password.component';

@NgModule({
  declarations: [
    AuthenticationComponent,
    LoginComponent,
    RegisterComponent,
    ForgotPasswordComponent,
  ],
  imports: [
    CommonModule,
    AuthenticationRoutingModule,
  ],
})
export class AuthenticationModule {
}
