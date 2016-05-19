/**
 * Job.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package webservice_layer;

public class Job  implements java.io.Serializable {
    private java.lang.String address;

    private webservice_layer.Competency[] arrayOFCompetency;

    private webservice_layer.Customer customer;

    private java.util.Calendar endDate;

    private int id;

    private java.util.Calendar startDate;

    public Job() {
    }

    public Job(
           java.lang.String address,
           webservice_layer.Competency[] arrayOFCompetency,
           webservice_layer.Customer customer,
           java.util.Calendar endDate,
           int id,
           java.util.Calendar startDate) {
           this.address = address;
           this.arrayOFCompetency = arrayOFCompetency;
           this.customer = customer;
           this.endDate = endDate;
           this.id = id;
           this.startDate = startDate;
    }


    /**
     * Gets the address value for this Job.
     * 
     * @return address
     */
    public java.lang.String getAddress() {
        return address;
    }


    /**
     * Sets the address value for this Job.
     * 
     * @param address
     */
    public void setAddress(java.lang.String address) {
        this.address = address;
    }


    /**
     * Gets the arrayOFCompetency value for this Job.
     * 
     * @return arrayOFCompetency
     */
    public webservice_layer.Competency[] getArrayOFCompetency() {
        return arrayOFCompetency;
    }


    /**
     * Sets the arrayOFCompetency value for this Job.
     * 
     * @param arrayOFCompetency
     */
    public void setArrayOFCompetency(webservice_layer.Competency[] arrayOFCompetency) {
        this.arrayOFCompetency = arrayOFCompetency;
    }


    /**
     * Gets the customer value for this Job.
     * 
     * @return customer
     */
    public webservice_layer.Customer getCustomer() {
        return customer;
    }


    /**
     * Sets the customer value for this Job.
     * 
     * @param customer
     */
    public void setCustomer(webservice_layer.Customer customer) {
        this.customer = customer;
    }


    /**
     * Gets the endDate value for this Job.
     * 
     * @return endDate
     */
    public java.util.Calendar getEndDate() {
        return endDate;
    }


    /**
     * Sets the endDate value for this Job.
     * 
     * @param endDate
     */
    public void setEndDate(java.util.Calendar endDate) {
        this.endDate = endDate;
    }


    /**
     * Gets the id value for this Job.
     * 
     * @return id
     */
    public int getId() {
        return id;
    }


    /**
     * Sets the id value for this Job.
     * 
     * @param id
     */
    public void setId(int id) {
        this.id = id;
    }


    /**
     * Gets the startDate value for this Job.
     * 
     * @return startDate
     */
    public java.util.Calendar getStartDate() {
        return startDate;
    }


    /**
     * Sets the startDate value for this Job.
     * 
     * @param startDate
     */
    public void setStartDate(java.util.Calendar startDate) {
        this.startDate = startDate;
    }

    private java.lang.Object __equalsCalc = null;
    public synchronized boolean equals(java.lang.Object obj) {
        if (!(obj instanceof Job)) return false;
        Job other = (Job) obj;
        if (obj == null) return false;
        if (this == obj) return true;
        if (__equalsCalc != null) {
            return (__equalsCalc == obj);
        }
        __equalsCalc = obj;
        boolean _equals;
        _equals = true && 
            ((this.address==null && other.getAddress()==null) || 
             (this.address!=null &&
              this.address.equals(other.getAddress()))) &&
            ((this.arrayOFCompetency==null && other.getArrayOFCompetency()==null) || 
             (this.arrayOFCompetency!=null &&
              java.util.Arrays.equals(this.arrayOFCompetency, other.getArrayOFCompetency()))) &&
            ((this.customer==null && other.getCustomer()==null) || 
             (this.customer!=null &&
              this.customer.equals(other.getCustomer()))) &&
            ((this.endDate==null && other.getEndDate()==null) || 
             (this.endDate!=null &&
              this.endDate.equals(other.getEndDate()))) &&
            this.id == other.getId() &&
            ((this.startDate==null && other.getStartDate()==null) || 
             (this.startDate!=null &&
              this.startDate.equals(other.getStartDate())));
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
        if (getAddress() != null) {
            _hashCode += getAddress().hashCode();
        }
        if (getArrayOFCompetency() != null) {
            for (int i=0;
                 i<java.lang.reflect.Array.getLength(getArrayOFCompetency());
                 i++) {
                java.lang.Object obj = java.lang.reflect.Array.get(getArrayOFCompetency(), i);
                if (obj != null &&
                    !obj.getClass().isArray()) {
                    _hashCode += obj.hashCode();
                }
            }
        }
        if (getCustomer() != null) {
            _hashCode += getCustomer().hashCode();
        }
        if (getEndDate() != null) {
            _hashCode += getEndDate().hashCode();
        }
        _hashCode += getId();
        if (getStartDate() != null) {
            _hashCode += getStartDate().hashCode();
        }
        __hashCodeCalc = false;
        return _hashCode;
    }

    // Type metadata
    private static org.apache.axis.description.TypeDesc typeDesc =
        new org.apache.axis.description.TypeDesc(Job.class, true);

    static {
        typeDesc.setXmlType(new javax.xml.namespace.QName("http://webservice_layer", "Job"));
        org.apache.axis.description.ElementDesc elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("address");
        elemField.setXmlName(new javax.xml.namespace.QName("http://webservice_layer", "address"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setNillable(true);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("arrayOFCompetency");
        elemField.setXmlName(new javax.xml.namespace.QName("http://webservice_layer", "arrayOFCompetency"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://webservice_layer", "Competency"));
        elemField.setNillable(true);
        elemField.setItemQName(new javax.xml.namespace.QName("http://webservice_layer", "item"));
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("customer");
        elemField.setXmlName(new javax.xml.namespace.QName("http://webservice_layer", "customer"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://webservice_layer", "Customer"));
        elemField.setNillable(true);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("endDate");
        elemField.setXmlName(new javax.xml.namespace.QName("http://webservice_layer", "endDate"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "dateTime"));
        elemField.setNillable(true);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("id");
        elemField.setXmlName(new javax.xml.namespace.QName("http://webservice_layer", "id"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "int"));
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("startDate");
        elemField.setXmlName(new javax.xml.namespace.QName("http://webservice_layer", "startDate"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "dateTime"));
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
