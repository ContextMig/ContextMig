.class Lcom/moonpi/swiftnotes/EditActivity$2;
.super Ljava/lang/Object;
.source "EditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moonpi/swiftnotes/EditActivity;->initToolbar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lcom/moonpi/swiftnotes/EditActivity;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/moonpi/swiftnotes/EditActivity$2;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x4e3323bc765be0c0L    # -8.363218261806094E-69

    const-string v2, "com/moonpi/swiftnotes/EditActivity$2"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/moonpi/swiftnotes/EditActivity$2;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/moonpi/swiftnotes/EditActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/moonpi/swiftnotes/EditActivity$2;->$jacocoInit()[Z

    move-result-object v0

    .line 158
    iput-object p1, p0, Lcom/moonpi/swiftnotes/EditActivity$2;->this$0:Lcom/moonpi/swiftnotes/EditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/moonpi/swiftnotes/EditActivity$2;->$jacocoInit()[Z

    move-result-object v0

    .line 161
    iget-object v1, p0, Lcom/moonpi/swiftnotes/EditActivity$2;->this$0:Lcom/moonpi/swiftnotes/EditActivity;

    invoke-virtual {v1}, Lcom/moonpi/swiftnotes/EditActivity;->onBackPressed()V

    .line 162
    aput-boolean v2, v0, v2

    return-void
.end method
