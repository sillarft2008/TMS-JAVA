/**
 * CompetencyArray.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package webservice_layer;

public class CompetencyArray  implements java.io.Serializable {
    private webservice_layer.Competency[] competency;

    private webservice_layer.Competency[] competencyArray;

    private int numberOfRows;

    public CompetencyArray() {
    }

    public CompetencyArray(
           webservice_layer.Competency[] competency,
           webservice_layer.Competency[] competencyArray,
           int numberOfRows) {
           this.competency = competency;
           this.competencyArray = competencyArray;
           this.numberOfRows = numberOfRows;
    }


    /**
     * Gets the competency value for this CompetencyArray.
     * 
     * @return competency
     */
    public webservice_layer.Competency[] getCompetency() {
        return competency;
    }


    /**
     * Sets the competency value for this CompetencyArray.
     * 
     * @param competency
     */
    public void setCompetency(webservice_layer.Competency[] competency) {
        this.competency = competency;
    }

    public webservice_layer.Competency getCompetency(int i) {
        return this.competency[i];
    }

    public void setCompetency(int i, webservice_layer.Competency _value) {
        this.competency[i] = _value;
    }


    /**
     * Gets the competencyArray value for this CompetencyArray.
     * 
     * @return competencyArray
     */
    public webservice_layer.Competency[] getCompetencyArray() {
        return competencyArray;
    }


    /**
     * Sets the competencyArray value for this CompetencyArray.
     * 
     * @param competencyArray
     */
    public void setCompetencyArray(webservice_layer.Competency[] competencyArray) {
        this.competencyArray = competencyArray;
    }


    /**
     * Gets the numberOfRows value for this CompetencyArray.
     * 
     * @return numberOfRows
     */
    public int getNumberOfRows() {
        return numberOfRows;
    }


    /**
     * Sets the numberOfRows value for this CompetencyArray.
     * 
     * @param numberOfRows
     */
    public void setNumberOfRows(int numberOfRows) {
        this.numberOfRows = numberOfRows;
    }

    private java.lang.Object __equalsCalc = null;
    public synchronized boolean equals(java.lang.Object obj) {
        if (!(obj instanceof CompetencyArray)) return false;
        CompetencyArray other = (CompetencyArray) obj;
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
              java.util.Arrays.equals(this.competency, other.getCompetency()))) &&
            ((this.competencyArray==null && other.getCompetencyArray()==null) || 
             (this.competencyArray!=null &&
              java.util.Arrays.equals(this.competencyArray, other.getCompetencyArray()))) &&
            this.numberOfRows == other.getNumberOfRows();
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
            for (int i=0;
                 i<java.lang.reflect.Array.getLength(getCompetency());
                 i++) {
                java.lang.Object obj = java.lang.reflect.Array.get(getCompetency(), i);
                if (obj != null &&
                    !obj.getClass().isArray()) {
                    _hashCode += obj.hashCode();
                }
            }
        }
        if (getCompetencyArray() != null) {
            for (int i=0;
                 i<java.lang.reflect.Array.getLength(getCompetencyArray());
                 i++) {
                java.lang.Object obj = java.lang.reflect.Array.get(getCompetencyArray(), i);
                if (obj != null &&
                    !obj.getClass().isArray()) {
                    _hashCode += obj.hashCode();
                }
            }
        }
        _hashCode += getNumberOfRows();
        __hashCodeCalc = false;
        return _hashCode;
    }

    // Type metadata
    private static org.apache.axis.description.TypeDesc typeDesc =
        new org.apache.axis.description.TypeDesc(CompetencyArray.class, true);

    static {
        typeDesc.setXmlType(new javax.xml.namespace.QName("http://webservice_layer", "CompetencyArray"));
        org.apache.axis.description.ElementDesc elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("competency");
        elemField.setXmlName(new javax.xml.namespace.QName("http://webservice_layer", "competency"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://webservice_layer", "Competency"));
        elemField.setNillable(true);
        elemField.setMaxOccursUnbounded(true);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("competencyArray");
        elemField.setXmlName(new javax.xml.namespace.QName("http://webservice_layer", "competencyArray"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://webservice_layer", "Competency"));
        elemField.setNillable(true);
        elemField.setItemQName(new javax.xml.namespace.QName("http://webservice_layer", "item"));
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("numberOfRows");
        elemField.setXmlName(new javax.xml.namespace.QName("http://webservice_layer", "numberOfRows"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "int"));
        elemField.setNillable(false);
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
