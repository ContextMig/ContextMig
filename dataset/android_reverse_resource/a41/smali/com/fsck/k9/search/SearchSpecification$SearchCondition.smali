.class public Lcom/fsck/k9/search/SearchSpecification$SearchCondition;
.super Ljava/lang/Object;
.source "SearchSpecification.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/search/SearchSpecification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchCondition"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/fsck/k9/search/SearchSpecification$SearchCondition;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final attribute:Lcom/fsck/k9/search/SearchSpecification$Attribute;

.field public final field:Lcom/fsck/k9/search/SearchSpecification$SearchField;

.field public final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 163
    new-instance v0, Lcom/fsck/k9/search/SearchSpecification$SearchCondition$1;

    invoke-direct {v0}, Lcom/fsck/k9/search/SearchSpecification$SearchCondition$1;-><init>()V

    sput-object v0, Lcom/fsck/k9/search/SearchSpecification$SearchCondition;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/search/SearchSpecification$SearchCondition;->value:Ljava/lang/String;

    .line 114
    invoke-static {}, Lcom/fsck/k9/search/SearchSpecification$Attribute;->values()[Lcom/fsck/k9/search/SearchSpecification$Attribute;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/fsck/k9/search/SearchSpecification$SearchCondition;->attribute:Lcom/fsck/k9/search/SearchSpecification$Attribute;

    .line 115
    invoke-static {}, Lcom/fsck/k9/search/SearchSpecification$SearchField;->values()[Lcom/fsck/k9/search/SearchSpecification$SearchField;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/fsck/k9/search/SearchSpecification$SearchCondition;->field:Lcom/fsck/k9/search/SearchSpecification$SearchField;

    .line 116
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/fsck/k9/search/SearchSpecification$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/fsck/k9/search/SearchSpecification$1;

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/fsck/k9/search/SearchSpecification$SearchCondition;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/fsck/k9/search/SearchSpecification$SearchField;Lcom/fsck/k9/search/SearchSpecification$Attribute;Ljava/lang/String;)V
    .locals 0
    .param p1, "field"    # Lcom/fsck/k9/search/SearchSpecification$SearchField;
    .param p2, "attribute"    # Lcom/fsck/k9/search/SearchSpecification$Attribute;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p3, p0, Lcom/fsck/k9/search/SearchSpecification$SearchCondition;->value:Ljava/lang/String;

    .line 108
    iput-object p2, p0, Lcom/fsck/k9/search/SearchSpecification$SearchCondition;->attribute:Lcom/fsck/k9/search/SearchSpecification$Attribute;

    .line 109
    iput-object p1, p0, Lcom/fsck/k9/search/SearchSpecification$SearchCondition;->field:Lcom/fsck/k9/search/SearchSpecification$SearchField;

    .line 110
    return-void
.end method


# virtual methods
.method public clone()Lcom/fsck/k9/search/SearchSpecification$SearchCondition;
    .locals 4

    .prologue
    .line 120
    new-instance v0, Lcom/fsck/k9/search/SearchSpecification$SearchCondition;

    iget-object v1, p0, Lcom/fsck/k9/search/SearchSpecification$SearchCondition;->field:Lcom/fsck/k9/search/SearchSpecification$SearchField;

    iget-object v2, p0, Lcom/fsck/k9/search/SearchSpecification$SearchCondition;->attribute:Lcom/fsck/k9/search/SearchSpecification$Attribute;

    iget-object v3, p0, Lcom/fsck/k9/search/SearchSpecification$SearchCondition;->value:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/fsck/k9/search/SearchSpecification$SearchCondition;-><init>(Lcom/fsck/k9/search/SearchSpecification$SearchField;Lcom/fsck/k9/search/SearchSpecification$Attribute;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/fsck/k9/search/SearchSpecification$SearchCondition;->clone()Lcom/fsck/k9/search/SearchSpecification$SearchCondition;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 129
    instance-of v1, p1, Lcom/fsck/k9/search/SearchSpecification$SearchCondition;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 130
    check-cast v0, Lcom/fsck/k9/search/SearchSpecification$SearchCondition;

    .line 131
    .local v0, "tmp":Lcom/fsck/k9/search/SearchSpecification$SearchCondition;
    iget-object v1, v0, Lcom/fsck/k9/search/SearchSpecification$SearchCondition;->attribute:Lcom/fsck/k9/search/SearchSpecification$Attribute;

    iget-object v2, p0, Lcom/fsck/k9/search/SearchSpecification$SearchCondition;->attribute:Lcom/fsck/k9/search/SearchSpecification$Attribute;

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lcom/fsck/k9/search/SearchSpecification$SearchCondition;->field:Lcom/fsck/k9/search/SearchSpecification$SearchField;

    iget-object v2, p0, Lcom/fsck/k9/search/SearchSpecification$SearchCondition;->field:Lcom/fsck/k9/search/SearchSpecification$SearchField;

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lcom/fsck/k9/search/SearchSpecification$SearchCondition;->value:Ljava/lang/String;

    iget-object v2, p0, Lcom/fsck/k9/search/SearchSpecification$SearchCondition;->value:Ljava/lang/String;

    .line 133
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    const/4 v1, 0x1

    .line 138
    .end local v0    # "tmp":Lcom/fsck/k9/search/SearchSpecification$SearchCondition;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 143
    const/4 v0, 0x1

    .line 144
    .local v0, "result":I
    iget-object v1, p0, Lcom/fsck/k9/search/SearchSpecification$SearchCondition;->attribute:Lcom/fsck/k9/search/SearchSpecification$Attribute;

    invoke-virtual {v1}, Lcom/fsck/k9/search/SearchSpecification$Attribute;->hashCode()I

    move-result v1

    add-int/lit8 v0, v1, 0x1f

    .line 145
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/fsck/k9/search/SearchSpecification$SearchCondition;->field:Lcom/fsck/k9/search/SearchSpecification$SearchField;

    invoke-virtual {v2}, Lcom/fsck/k9/search/SearchSpecification$SearchField;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 146
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/fsck/k9/search/SearchSpecification$SearchCondition;->value:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 148
    return v0
.end method

.method public toHumanString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/fsck/k9/search/SearchSpecification$SearchCondition;->field:Lcom/fsck/k9/search/SearchSpecification$SearchField;

    invoke-virtual {v1}, Lcom/fsck/k9/search/SearchSpecification$SearchField;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/search/SearchSpecification$SearchCondition;->attribute:Lcom/fsck/k9/search/SearchSpecification$Attribute;

    invoke-virtual {v1}, Lcom/fsck/k9/search/SearchSpecification$Attribute;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 158
    iget-object v0, p0, Lcom/fsck/k9/search/SearchSpecification$SearchCondition;->value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/fsck/k9/search/SearchSpecification$SearchCondition;->attribute:Lcom/fsck/k9/search/SearchSpecification$Attribute;

    invoke-virtual {v0}, Lcom/fsck/k9/search/SearchSpecification$Attribute;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    iget-object v0, p0, Lcom/fsck/k9/search/SearchSpecification$SearchCondition;->field:Lcom/fsck/k9/search/SearchSpecification$SearchField;

    invoke-virtual {v0}, Lcom/fsck/k9/search/SearchSpecification$SearchField;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    return-void
.end method
