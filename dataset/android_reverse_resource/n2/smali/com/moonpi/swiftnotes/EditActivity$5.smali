.class Lcom/moonpi/swiftnotes/EditActivity$5;
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

    sget-object v0, Lcom/moonpi/swiftnotes/EditActivity$5;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x35402a040ce32ed8L    # -1.1911215220884404E52

    const-string v2, "com/moonpi/swiftnotes/EditActivity$5"

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/moonpi/swiftnotes/EditActivity$5;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/moonpi/swiftnotes/EditActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/moonpi/swiftnotes/EditActivity$5;->$jacocoInit()[Z

    move-result-object v0

    .line 210
    iput-object p1, p0, Lcom/moonpi/swiftnotes/EditActivity$5;->this$0:Lcom/moonpi/swiftnotes/EditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    invoke-static {}, Lcom/moonpi/swiftnotes/EditActivity$5;->$jacocoInit()[Z

    move-result-object v0

    .line 214
    iget-object v1, p0, Lcom/moonpi/swiftnotes/EditActivity$5;->this$0:Lcom/moonpi/swiftnotes/EditActivity;

    iget-object v2, p0, Lcom/moonpi/swiftnotes/EditActivity$5;->this$0:Lcom/moonpi/swiftnotes/EditActivity;

    invoke-static {v2}, Lcom/moonpi/swiftnotes/EditActivity;->access$600(Lcom/moonpi/swiftnotes/EditActivity;)[I

    move-result-object v2

    aget v2, v2, p2

    invoke-static {v1, v2}, Lcom/moonpi/swiftnotes/EditActivity;->access$502(Lcom/moonpi/swiftnotes/EditActivity;I)I

    aput-boolean v3, v0, v3

    .line 215
    iget-object v1, p0, Lcom/moonpi/swiftnotes/EditActivity$5;->this$0:Lcom/moonpi/swiftnotes/EditActivity;

    invoke-static {v1}, Lcom/moonpi/swiftnotes/EditActivity;->access$000(Lcom/moonpi/swiftnotes/EditActivity;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/moonpi/swiftnotes/EditActivity$5;->this$0:Lcom/moonpi/swiftnotes/EditActivity;

    invoke-static {v2}, Lcom/moonpi/swiftnotes/EditActivity;->access$500(Lcom/moonpi/swiftnotes/EditActivity;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v4, v2}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 216
    aput-boolean v3, v0, v4

    return-void
.end method
