.class Lcom/moonpi/swiftnotes/EditActivity$1;
.super Ljava/lang/Object;
.source "EditActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moonpi/swiftnotes/EditActivity;->onCreate(Landroid/os/Bundle;)V
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

    sget-object v0, Lcom/moonpi/swiftnotes/EditActivity$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x6cae820485656059L    # 3.2865403430016074E215

    const-string v2, "com/moonpi/swiftnotes/EditActivity$1"

    const/4 v3, 0x6

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/moonpi/swiftnotes/EditActivity$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/moonpi/swiftnotes/EditActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/moonpi/swiftnotes/EditActivity$1;->$jacocoInit()[Z

    move-result-object v0

    .line 100
    iput-object p1, p0, Lcom/moonpi/swiftnotes/EditActivity$1;->this$0:Lcom/moonpi/swiftnotes/EditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x1

    invoke-static {}, Lcom/moonpi/swiftnotes/EditActivity$1;->$jacocoInit()[Z

    move-result-object v2

    .line 103
    iget-object v1, p0, Lcom/moonpi/swiftnotes/EditActivity$1;->this$0:Lcom/moonpi/swiftnotes/EditActivity;

    invoke-static {v1}, Lcom/moonpi/swiftnotes/EditActivity;->access$000(Lcom/moonpi/swiftnotes/EditActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-nez v1, :cond_0

    aput-boolean v0, v2, v0

    .line 104
    iget-object v1, p0, Lcom/moonpi/swiftnotes/EditActivity$1;->this$0:Lcom/moonpi/swiftnotes/EditActivity;

    invoke-static {v1}, Lcom/moonpi/swiftnotes/EditActivity;->access$000(Lcom/moonpi/swiftnotes/EditActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    aput-boolean v0, v2, v4

    .line 105
    iget-object v1, p0, Lcom/moonpi/swiftnotes/EditActivity$1;->this$0:Lcom/moonpi/swiftnotes/EditActivity;

    invoke-static {v1}, Lcom/moonpi/swiftnotes/EditActivity;->access$000(Lcom/moonpi/swiftnotes/EditActivity;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v3, p0, Lcom/moonpi/swiftnotes/EditActivity$1;->this$0:Lcom/moonpi/swiftnotes/EditActivity;

    invoke-static {v3}, Lcom/moonpi/swiftnotes/EditActivity;->access$000(Lcom/moonpi/swiftnotes/EditActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setSelection(I)V

    const/4 v1, 0x3

    aput-boolean v0, v2, v1

    .line 107
    iget-object v1, p0, Lcom/moonpi/swiftnotes/EditActivity$1;->this$0:Lcom/moonpi/swiftnotes/EditActivity;

    invoke-static {v1}, Lcom/moonpi/swiftnotes/EditActivity;->access$100(Lcom/moonpi/swiftnotes/EditActivity;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 110
    const/4 v1, 0x4

    aput-boolean v0, v2, v1

    .line 113
    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    const/4 v3, 0x5

    aput-boolean v0, v2, v3

    move v0, v1

    goto :goto_0
.end method
