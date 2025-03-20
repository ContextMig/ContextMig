.class Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$SemicolonInputFilter;
.super Ljava/lang/Object;
.source "AddRecordActivity.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SemicolonInputFilter"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$SemicolonInputFilter;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x7685911718c5d2e8L    # 8.488894003845816E262

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$SemicolonInputFilter"

    const/4 v3, 0x6

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$SemicolonInputFilter;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$SemicolonInputFilter;->$jacocoInit()[Z

    move-result-object v0

    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method synthetic constructor <init>(Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$1;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$SemicolonInputFilter;->$jacocoInit()[Z

    move-result-object v0

    .line 375
    invoke-direct {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$SemicolonInputFilter;-><init>()V

    const/4 v1, 0x5

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$SemicolonInputFilter;->$jacocoInit()[Z

    move-result-object v1

    .line 379
    if-nez p1, :cond_0

    aput-boolean v3, v1, v3

    .line 380
    :goto_0
    const/4 v0, 0x0

    const/4 v2, 0x4

    aput-boolean v3, v1, v2

    :goto_1
    return-object v0

    .line 379
    :cond_0
    const-string/jumbo v0, ";"

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    aput-boolean v3, v1, v0

    goto :goto_0

    :cond_1
    const-string/jumbo v0, ""

    const/4 v2, 0x3

    aput-boolean v3, v1, v2

    goto :goto_1
.end method
