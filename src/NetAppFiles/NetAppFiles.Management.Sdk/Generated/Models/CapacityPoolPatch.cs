// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is regenerated.

namespace Microsoft.Azure.Management.NetApp.Models
{
    using System.Linq;

    /// <summary>
    /// Capacity pool patch resource
    /// </summary>
    [Microsoft.Rest.Serialization.JsonTransformation]
    public partial class CapacityPoolPatch : Microsoft.Rest.Azure.IResource
    {
        /// <summary>
        /// Initializes a new instance of the CapacityPoolPatch class.
        /// </summary>
        public CapacityPoolPatch()
        {
            CustomInit();
        }

        /// <summary>
        /// Initializes a new instance of the CapacityPoolPatch class.
        /// </summary>

        /// <param name="location">Resource location
        /// </param>

        /// <param name="id">Resource Id
        /// </param>

        /// <param name="name">Resource name
        /// </param>

        /// <param name="type">Resource type
        /// </param>

        /// <param name="tags">Resource tags
        /// </param>

        /// <param name="qosType">The qos type of the pool
        /// Possible values include: &#39;Auto&#39;, &#39;Manual&#39;</param>

        /// <param name="size">Provisioned size of the pool (in bytes). Allowed values are in 1TiB chunks
        /// (value must be multiply of 4398046511104).
        /// </param>

        /// <param name="coolAccess">If enabled (true) the pool can contain cool Access enabled volumes.
        /// </param>
        public CapacityPoolPatch(string location = default(string), string id = default(string), string name = default(string), string type = default(string), System.Collections.Generic.IDictionary<string, string> tags = default(System.Collections.Generic.IDictionary<string, string>), string qosType = default(string), long? size = default(long?), bool? coolAccess = default(bool?))

        {
            this.Location = location;
            this.Id = id;
            this.Name = name;
            this.Type = type;
            this.Tags = tags;
            this.QosType = qosType;
            this.Size = size;
            this.CoolAccess = coolAccess;
            CustomInit();
        }

        /// <summary>
        /// An initialization method that performs custom operations like setting defaults
        /// </summary>
        partial void CustomInit();


        /// <summary>
        /// Gets or sets resource location
        /// </summary>
        [Newtonsoft.Json.JsonProperty(PropertyName = "location")]
        public string Location {get; set; }

        /// <summary>
        /// Gets resource Id
        /// </summary>
        [Newtonsoft.Json.JsonProperty(PropertyName = "id")]
        public string Id {get; private set; }

        /// <summary>
        /// Gets resource name
        /// </summary>
        [Newtonsoft.Json.JsonProperty(PropertyName = "name")]
        public string Name {get; private set; }

        /// <summary>
        /// Gets resource type
        /// </summary>
        [Newtonsoft.Json.JsonProperty(PropertyName = "type")]
        public string Type {get; private set; }

        /// <summary>
        /// Gets or sets resource tags
        /// </summary>
        [Newtonsoft.Json.JsonProperty(PropertyName = "tags")]
        public System.Collections.Generic.IDictionary<string, string> Tags {get; set; }

        /// <summary>
        /// Gets or sets the qos type of the pool Possible values include: &#39;Auto&#39;, &#39;Manual&#39;
        /// </summary>
        [Newtonsoft.Json.JsonProperty(PropertyName = "properties.qosType")]
        public string QosType {get; set; }

        /// <summary>
        /// Gets or sets provisioned size of the pool (in bytes). Allowed values are in
        /// 1TiB chunks (value must be multiply of 4398046511104).
        /// </summary>
        [Newtonsoft.Json.JsonProperty(PropertyName = "properties.size")]
        public long? Size {get; set; }

        /// <summary>
        /// Gets or sets if enabled (true) the pool can contain cool Access enabled
        /// volumes.
        /// </summary>
        [Newtonsoft.Json.JsonProperty(PropertyName = "properties.coolAccess")]
        public bool? CoolAccess {get; set; }
    }
}