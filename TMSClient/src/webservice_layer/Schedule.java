/**
 * Schedule.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package webservice_layer;

public class Schedule  implements java.io.Serializable {
    private webservice_layer.Competency competency;

    private java.util.Calendar duration;

    private webservice_layer.Employee employee;

    private int id;

    private webservice_layer.Item item;

    private webservice_layer.Job job;

    private java.util.Calendar startTimeDate;

    private java.lang.String startTimeDateString;

    private java.lang.String startTimeString;

    public Schedule() {
    }

    public Schedule(
           webservice_layer.Competency competency,
           java.util.Calendar duration,
           webservice_layer.Employee employee,
           int id,
           webservice_layer.Item item,
           webservice_layer.Job job,
           java.util.Calendar startTimeDate,
           java.lang.String startTimeDateString,
           java.lang.String startTimeString) {
           this.competency = competency;
           this.duration = duration;
           this.employee = employee;
           this.id = id;
           this.item = item;
           this.job = job;
           this.startTimeDate = startTimeDate;
           this.startTimeDateString = startTimeDateString;
           this.startTimeString = startTimeString;
    }


    /**
     * Gets the competency value for this Schedule.
     * 
     * @return competency
     */
    public webservice_layer.Competency getCompetency() {
        return competency;
    }


    /**
     * Sets the competency value for this Schedule.
     * 
     * @param competency
     */
    public void setCompetency(webservice_layer.Competency competency) {
        this.competency = competency;
    }


    /**
     * Gets the duration value for this Schedule.
     * 
     * @return duration
     */
    public java.util.Calendar getDuration() {
        return duration;
    }


    /**
     * Sets the duration value for this Schedule.
     * 
     * @param duration
     */
    public void setDuration(java.util.Calendar duration) {
        this.duration = duration;
    }


    /**
     * Gets the employee value for this Schedule.
     * 
     * @return employee
     */
    public webservice_layer.Employee getEmployee() {
        return employee;
    }


    /**
     * Sets the employee value for this Schedule.
     * 
     * @param employee
     */
    public void setEmployee(webservice_layer.Employee employee) {
        this.employee = employee;
    }


    /**
     * Gets the id value for this Schedule.
     * 
     * @return id
     */
    public int getId() {
        return id;
    }


    /**
     * Sets the id value for this Schedule.
     * 
     * @param id
     */
    public void setId(int id) {
        this.id = id;
    }


    /**
     * Gets the item value for this Schedule.
     * 
     * @return item
     */
    public webservice_layer.Item getItem() {
        return item;
    }


    /**
     * Sets the item value for this Schedule.
     * 
     * @param item
     */
    public void setItem(webservice_layer.Item item) {
        this.item = item;
    }


    /**
     * Gets the job value for this Schedule.
     * 
     * @return job
     */
    public webservice_layer.Job getJob() {
        return job;
    }


    /**
     * Sets the job value for this Schedule.
     * 
     * @param job
     */
    public void setJob(webservice_layer.Job job) {
        this.job = job;
    }


    /**
     * Gets the startTimeDate value for this Schedule.
     * 
     * @return startTimeDate
     */
    public java.util.Calendar getStartTimeDate() {
        return startTimeDate;
    }


    /**
     * Sets the startTimeDate value for this Schedule.
     * 
     * @param startTimeDate
     */
    public void setStartTimeDate(java.util.Calendar startTimeDate) {
        this.startTimeDate = startTimeDate;
    }


    /**
     * Gets the startTimeDateString value for this Schedule.
     * 
     * @return startTimeDateString
     */
    public java.lang.String getStartTimeDateString() {
        return startTimeDateString;
    }


    /**
     * Sets the startTimeDateString value for this Schedule.
     * 
     * @param startTimeDateString
     */
    public void setStartTimeDateString(java.lang.String startTimeDateString) {
        this.startTimeDateString = startTimeDateString;
    }


    /**
     * Gets the startTimeString value for this Schedule.
     * 
     * @return startTimeString
     */
    public java.lang.String getStartTimeString() {
        return startTimeString;
    }


    /**
     * Sets the startTimeString value for this Schedule.
     * 
     * @param startTimeString
     */
    public void setStartTimeString(java.lang.String startTimeString) {
        this.startTimeString = startTimeString;
    }

    private java.lang.Object __equalsCalc = null;
    public synchronized boolean equals(java.lang.Object obj) {
        if (!(obj instanceof Schedule)) return false;
        Schedule other = (Schedule) obj;
        if (obj == null) return false;
        if (this == obj) return true;
        if (__equalsCalc != null) {
            return (__equalsCalc == obj);
        }
        __equalsCalc = obj;
        boolean _equals;
        _equals = true && 
            ((this.competency==null && other.getCompetency()==null) || 
             (this.competency!=null &&
              this.competency.equals(other.getCompetency()))) &&
            ((this.duration==null && other.getDuration()==null) || 
             (this.duration!=null &&
              this.duration.equals(other.getDuration()))) &&
            ((this.employee==null && other.getEmployee()==null) || 
             (this.employee!=null &&
              this.employee.equals(other.getEmployee()))) &&
            this.id == other.getId() &&
            ((this.item==null && other.getItem()==null) || 
             (this.item!=null &&
              this.item.equals(other.getItem()))) &&
            ((this.job==null && other.getJob()==null) || 
             (this.job!=null &&
              this.job.equals(other.getJob()))) &&
            ((this.startTimeDate==null && other.getStartTimeDate()==null) || 
             (this.startTimeDate!=null &&
              this.startTimeDate.equals(other.getStartTimeDate()))) &&
            ((this.startTimeDateString==null && other.getStartTimeDateString()==null) || 
             (this.startTimeDateString!=null &&
              this.startTimeDateString.equals(other.getStartTimeDateString()))) &&
            ((this.startTimeString==null && other.getStartTimeString()==null) || 
             (this.startTimeString!=null &&
              this.startTimeString.equals(other.getStartTimeString())));
        __equalsCalc = null;
        return _equals;
    }

    private boolean __hashCodeCalc = false;
    public synchronized int hashCode() {
        if (__hashCodeCalc) {
            return 0;
        }
        __hashCodeCalc = true;
        int _hashCode = 1;
        if (getCompetency() != null) {
            _hashCode += getCompetency().hashCode();
        }
        if (getDuration() != null) {
            _hashCode += getDuration().hashCode();
        }
        if (getEmployee() != null) {
            _hashCode += getEmployee().hashCode();
        }
        _hashCode += getId();
        if (getItem() != null) {
            _hashCode += getItem().hashCode();
        }
        if (getJob() != null) {
            _hashCode += getJob().hashCode();
        }
        if (getStartTimeDate() != null) {
            _hashCode += getStartTimeDate().hashCode();
        }
        if (getStartTimeDateString() != null) {
            _hashCode += getStartTimeDateString().hashCode();
        }
        if (getStartTimeString() != null) {
            _hashCode += getStartTimeString().hashCode();
        }
        __hashCodeCalc = false;
        return _hashCode;
    }

    // Type metadata
    private static org.apache.axis.description.TypeDesc typeDesc =
        new org.apache.axis.description.TypeDesc(Schedule.class, true);

    static {
        typeDesc.setXmlType(new javax.xml.namespace.QName("http://webservice_layer", "Schedule"));
        org.apache.axis.description.ElementDesc elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("competency");
        elemField.setXmlName(new javax.xml.namespace.QName("http://webservice_layer", "competency"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://webservice_layer", "Competency"));
        elemField.setNillable(true);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("duration");
        elemField.setXmlName(new javax.xml.namespace.QName("http://webservice_layer", "duration"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "dateTime"));
        elemField.setNillable(true);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("employee");
        elemField.setXmlName(new javax.xml.namespace.QName("http://webservice_layer", "employee"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://webservice_layer", "Employee"));
        elemField.setNillable(true);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("id");
        elemField.setXmlName(new javax.xml.namespace.QName("http://webservice_layer", "id"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "int"));
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("item");
        elemField.setXmlName(new javax.xml.namespace.QName("http://webservice_layer", "item"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://webservice_layer", "Item"));
        elemField.setNillable(true);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("job");
        elemField.setXmlName(new javax.xml.namespace.QName("http://webservice_layer", "job"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://webservice_layer", "Job"));
        elemField.setNillable(true);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("startTimeDate");
        elemField.setXmlName(new javax.xml.namespace.QName("http://webservice_layer", "startTimeDate"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "dateTime"));
        elemField.setNillable(true);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("startTimeDateString");
        elemField.setXmlName(new javax.xml.namespace.QName("http://webservice_layer", "startTimeDateString"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setNillable(true);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("startTimeString");
        elemField.setXmlName(new javax.xml.namespace.QName("http://webservice_layer", "startTimeString"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setNillable(true);
        typeDesc.addFieldDesc(elemField);
    }

    /**
     * Return type metadata object
     */
    public static org.apache.axis.description.TypeDesc getTypeDesc() {
        return typeDesc;
    }

    /**
     * Get Custom Serializer
     */
    public static org.apache.axis.encoding.Serializer getSerializer(
           java.lang.String mechType, 
           java.lang.Class _javaType,  
           javax.xml.namespace.QName _xmlType) {
        return 
          new  org.apache.axis.encoding.ser.BeanSerializer(
            _javaType, _xmlType, typeDesc);
    }

    /**
     * Get Custom Deserializer
     */
    public static org.apache.axis.encoding.Deserializer getDeserializer(
           java.lang.String mechType, 
           java.lang.Class _javaType,  
           javax.xml.namespace.QName _xmlType) {
        return 
          new  org.apache.axis.encoding.ser.BeanDeserializer(
            _javaType, _xmlType, typeDesc);
    }

}
