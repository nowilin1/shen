//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Database_demo
{
    using System;
    using System.Collections.Generic;
    
    public partial class HotelComponent
    {
        public int id { get; set; }
        public int id_Hotel { get; set; }
        public string text { get; set; }
        public string author { get; set; }
        public Nullable<System.DateTime> creationDate { get; set; }
    
        public virtual hotel hotel { get; set; }
    }
}