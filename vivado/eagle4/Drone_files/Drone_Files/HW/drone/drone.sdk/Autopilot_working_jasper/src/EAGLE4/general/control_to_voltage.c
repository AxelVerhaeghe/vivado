/**********************************************************************************************************************
*   Voltage calculation file
*   this file will convert the control action vector (3x1) to the 4 required voltages. [u(3x1) --> v(4x1)]
*   The common factor (thrust) is calculated by the altitude controller
***********************************************************************************************************************/

#include "../EAGLE4.h"

static float output_voltage[4];

void control_to_voltage(float rot_x,float rot_y,float rot_z) {
    
    output_voltage[0] = thrust + rot_x + rot_y - rot_z;
    output_voltage[1] = thrust + rot_x - rot_y + rot_z;
    output_voltage[2] = thrust - rot_x + rot_y + rot_z;
    output_voltage[3] = thrust - rot_x - rot_y - rot_z;

}
/* Getter to return the output voltages in other files */
float * get_control_to_voltage(void){
    return output_voltage;
}

