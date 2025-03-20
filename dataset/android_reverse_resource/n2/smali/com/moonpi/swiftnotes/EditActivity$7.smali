.class Lcom/moonpi/swiftnotes/EditActivity$7;
.super Ljava/lang/Object;
.source "EditActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moonpi/swiftnotes/EditActivity;->initDialogs(Landroid/content/Context;)V
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

    sget-object v0, Lcom/moonpi/swiftnotes/EditActivity$7;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x3c265b7bb13ed2edL    # 6.059973526051145E-19

    const-string v2, "com/moonpi/swiftnotes/EditActivity$7"

    const/4 v3, 0x6

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/moonpi/swiftnotes/EditActivity$7;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/moonpi/swiftnotes/EditActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/moonpi/swiftnotes/EditActivity$7;->$jacocoInit()[Z

    move-result-object v0

    .line 230
    iput-object p1, p0, Lcom/moonpi/swiftnotes/EditActivity$7;->this$0:Lcom/moonpi/swiftnotes/EditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/moonpi/swiftnotes/EditActivity$7;->$jacocoInit()[Z

    move-result-object v0

    .line 235
    iget-object v1, p0, Lcom/moonpi/swiftnotes/EditActivity$7;->this$0:Lcom/moonpi/swiftnotes/EditActivity;

    iget-object v2, p0, Lcom/moonpi/swiftnotes/EditActivity$7;->this$0:Lcom/moonpi/swiftnotes/EditActivity;

    invoke-static {v2}, Lcom/moonpi/swiftnotes/EditActivity;->access$800(Lcom/moonpi/swiftnotes/EditActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/moonpi/swiftnotes/EditActivity;->isEmpty(Landroid/widget/EditText;)Z

    move-result v1

    if-nez v1, :cond_0

    aput-boolean v3, v0, v3

    .line 236
    :goto_0
    iget-object v1, p0, Lcom/moonpi/swiftnotes/EditActivity$7;->this$0:Lcom/moonpi/swiftnotes/EditActivity;

    invoke-virtual {v1}, Lcom/moonpi/swiftnotes/EditActivity;->saveChanges()V

    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    .line 240
    :goto_1
    const/4 v1, 0x5

    aput-boolean v3, v0, v1

    return-void

    .line 235
    :cond_0
    iget-object v1, p0, Lcom/moonpi/swiftnotes/EditActivity$7;->this$0:Lcom/moonpi/swiftnotes/EditActivity;

    iget-object v2, p0, Lcom/moonpi/swiftnotes/EditActivity$7;->this$0:Lcom/moonpi/swiftnotes/EditActivity;

    invoke-static {v2}, Lcom/moonpi/swiftnotes/EditActivity;->access$000(Lcom/moonpi/swiftnotes/EditActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/moonpi/swiftnotes/EditActivity;->isEmpty(Landroid/widget/EditText;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    goto :goto_0

    .line 239
    :cond_1
    iget-object v1, p0, Lcom/moonpi/swiftnotes/EditActivity$7;->this$0:Lcom/moonpi/swiftnotes/EditActivity;

    invoke-virtual {v1}, Lcom/moonpi/swiftnotes/EditActivity;->toastEditTextCannotBeEmpty()V

    const/4 v1, 0x4

    aput-boolean v3, v0, v1

    goto :goto_1
.end method
