.class public Lpl/com/andrzejgrzyb/shoppinglist/FlowRadioGroup$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "FlowRadioGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/com/andrzejgrzyb/shoppinglist/FlowRadioGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedState"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lpl/com/andrzejgrzyb/shoppinglist/FlowRadioGroup$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private checkIndex:I


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lpl/com/andrzejgrzyb/shoppinglist/FlowRadioGroup$SavedState;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0xe4d7755b63824e4L    # 8.838058736912952E-240

    const-string v2, "pl/com/andrzejgrzyb/shoppinglist/FlowRadioGroup$SavedState"

    const/16 v3, 0x8

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lpl/com/andrzejgrzyb/shoppinglist/FlowRadioGroup$SavedState;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/FlowRadioGroup$SavedState;->$jacocoInit()[Z

    move-result-object v0

    .line 170
    new-instance v1, Lpl/com/andrzejgrzyb/shoppinglist/FlowRadioGroup$SavedState$1;

    invoke-direct {v1}, Lpl/com/andrzejgrzyb/shoppinglist/FlowRadioGroup$SavedState$1;-><init>()V

    sput-object v1, Lpl/com/andrzejgrzyb/shoppinglist/FlowRadioGroup$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    const/4 v1, 0x7

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/FlowRadioGroup$SavedState;->$jacocoInit()[Z

    move-result-object v0

    .line 190
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    aput-boolean v2, v0, v2

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lpl/com/andrzejgrzyb/shoppinglist/FlowRadioGroup$SavedState;->checkIndex:I

    .line 192
    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lpl/com/andrzejgrzyb/shoppinglist/FlowRadioGroup$1;)V
    .locals 3

    .prologue
    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/FlowRadioGroup$SavedState;->$jacocoInit()[Z

    move-result-object v0

    .line 168
    invoke-direct {p0, p1}, Lpl/com/andrzejgrzyb/shoppinglist/FlowRadioGroup$SavedState;-><init>(Landroid/os/Parcel;)V

    const/4 v1, 0x6

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;I)V
    .locals 3

    .prologue
    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/FlowRadioGroup$SavedState;->$jacocoInit()[Z

    move-result-object v0

    .line 185
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 186
    iput p2, p0, Lpl/com/andrzejgrzyb/shoppinglist/FlowRadioGroup$SavedState;->checkIndex:I

    .line 187
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$000(Lpl/com/andrzejgrzyb/shoppinglist/FlowRadioGroup$SavedState;)I
    .locals 4

    .prologue
    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/FlowRadioGroup$SavedState;->$jacocoInit()[Z

    move-result-object v0

    .line 168
    iget v1, p0, Lpl/com/andrzejgrzyb/shoppinglist/FlowRadioGroup$SavedState;->checkIndex:I

    const/4 v2, 0x5

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/FlowRadioGroup$SavedState;->$jacocoInit()[Z

    move-result-object v0

    .line 196
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    const/4 v1, 0x3

    aput-boolean v2, v0, v1

    .line 197
    iget v1, p0, Lpl/com/andrzejgrzyb/shoppinglist/FlowRadioGroup$SavedState;->checkIndex:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    const/4 v1, 0x4

    aput-boolean v2, v0, v1

    return-void
.end method
