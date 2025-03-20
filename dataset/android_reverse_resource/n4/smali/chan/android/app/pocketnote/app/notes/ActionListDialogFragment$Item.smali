.class public Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment$Item;
.super Ljava/lang/Object;
.source "ActionListDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final iconId:I

.field final name:Ljava/lang/String;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment$Item;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x13343e811271ef94L

    const-string v2, "chan/android/app/pocketnote/app/notes/ActionListDialogFragment$Item"

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment$Item;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment$Item;->$jacocoInit()[Z

    move-result-object v0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput p1, p0, Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment$Item;->iconId:I

    .line 76
    iput-object p2, p0, Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment$Item;->name:Ljava/lang/String;

    .line 77
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public getIconId()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment$Item;->$jacocoInit()[Z

    move-result-object v0

    .line 80
    iget v1, p0, Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment$Item;->iconId:I

    aput-boolean v2, v0, v2

    return v1
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment$Item;->$jacocoInit()[Z

    move-result-object v0

    .line 84
    iget-object v1, p0, Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment$Item;->name:Ljava/lang/String;

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method
