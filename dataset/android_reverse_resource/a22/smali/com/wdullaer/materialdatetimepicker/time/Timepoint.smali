.class public Lcom/wdullaer/materialdatetimepicker/time/Timepoint;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private a:I

.field private b:I

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint$1;

    invoke-direct {v0}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint$1;-><init>()V

    sput-object v0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    rem-int/lit8 v0, p1, 0x18

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->a:I

    rem-int/lit8 v0, p2, 0x3c

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->b:I

    rem-int/lit8 v0, p3, 0x3c

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->c:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->a:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->b:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->c:I

    return-void
.end method

.method public constructor <init>(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)V
    .locals 3

    iget v0, p1, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->a:I

    iget v1, p1, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->b:I

    iget v2, p1, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->c:I

    invoke-direct {p0, v0, v1, v2}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;-><init>(III)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->a:I

    return v0
.end method

.method public a(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)I
    .locals 3

    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->a:I

    iget v1, p1, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->a:I

    sub-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0xe10

    iget v1, p0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->b:I

    iget v2, p1, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->b:I

    sub-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x3c

    add-int/2addr v0, v1

    iget v1, p0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->c:I

    iget v2, p1, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->c:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->b:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->c:I

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {p0, p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->a(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)I

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 2

    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->a:I

    const/16 v1, 0xc

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()Z
    .locals 2

    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->a:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->a:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    check-cast p1, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->a()I

    move-result v1

    iget v2, p0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->a:I

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->b()I

    move-result v1

    iget v2, p0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->b:I

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->c()I

    move-result v1

    iget v2, p0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->c:I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public f()V
    .locals 2

    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->a:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->a:I

    rem-int/lit8 v0, v0, 0xc

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->a:I

    :cond_0
    return-void
.end method

.method public g()V
    .locals 2

    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->a:I

    const/16 v1, 0xc

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->a:I

    add-int/lit8 v0, v0, 0xc

    rem-int/lit8 v0, v0, 0x18

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->a:I

    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
