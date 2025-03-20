.class Lcom/moonpi/swiftnotes/EditActivity$6;
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

    sget-object v0, Lcom/moonpi/swiftnotes/EditActivity$6;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x239e3b8405c79579L    # -1.0331295364073568E137

    const-string v2, "com/moonpi/swiftnotes/EditActivity$6"

    const/16 v3, 0xc

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/moonpi/swiftnotes/EditActivity$6;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/moonpi/swiftnotes/EditActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/moonpi/swiftnotes/EditActivity$6;->$jacocoInit()[Z

    move-result-object v0

    .line 242
    iput-object p1, p0, Lcom/moonpi/swiftnotes/EditActivity$6;->this$0:Lcom/moonpi/swiftnotes/EditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lcom/moonpi/swiftnotes/EditActivity$6;->$jacocoInit()[Z

    move-result-object v0

    .line 246
    iget-object v1, p0, Lcom/moonpi/swiftnotes/EditActivity$6;->this$0:Lcom/moonpi/swiftnotes/EditActivity;

    invoke-static {v1}, Lcom/moonpi/swiftnotes/EditActivity;->access$700(Lcom/moonpi/swiftnotes/EditActivity;)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_0

    aput-boolean v4, v0, v4

    .line 260
    :goto_0
    const/16 v1, 0xb

    aput-boolean v4, v0, v1

    return-void

    .line 246
    :cond_0
    iget-object v1, p0, Lcom/moonpi/swiftnotes/EditActivity$6;->this$0:Lcom/moonpi/swiftnotes/EditActivity;

    invoke-static {v1}, Lcom/moonpi/swiftnotes/EditActivity;->access$700(Lcom/moonpi/swiftnotes/EditActivity;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "requestCode"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const v2, 0xea60

    if-eq v1, v2, :cond_1

    const/4 v1, 0x2

    aput-boolean v4, v0, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    aput-boolean v4, v0, v1

    .line 249
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/4 v2, 0x4

    aput-boolean v4, v0, v2

    .line 250
    const-string v2, "request"

    const-string v3, "discard"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x5

    aput-boolean v4, v0, v2

    .line 252
    iget-object v2, p0, Lcom/moonpi/swiftnotes/EditActivity$6;->this$0:Lcom/moonpi/swiftnotes/EditActivity;

    invoke-virtual {v2, v5, v1}, Lcom/moonpi/swiftnotes/EditActivity;->setResult(ILandroid/content/Intent;)V

    const/4 v1, 0x6

    aput-boolean v4, v0, v1

    .line 254
    iget-object v1, p0, Lcom/moonpi/swiftnotes/EditActivity$6;->this$0:Lcom/moonpi/swiftnotes/EditActivity;

    invoke-static {v1}, Lcom/moonpi/swiftnotes/EditActivity;->access$100(Lcom/moonpi/swiftnotes/EditActivity;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    iget-object v2, p0, Lcom/moonpi/swiftnotes/EditActivity$6;->this$0:Lcom/moonpi/swiftnotes/EditActivity;

    invoke-static {v2}, Lcom/moonpi/swiftnotes/EditActivity;->access$800(Lcom/moonpi/swiftnotes/EditActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    const/4 v1, 0x7

    aput-boolean v4, v0, v1

    .line 256
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    const/16 v1, 0x8

    aput-boolean v4, v0, v1

    .line 257
    iget-object v1, p0, Lcom/moonpi/swiftnotes/EditActivity$6;->this$0:Lcom/moonpi/swiftnotes/EditActivity;

    invoke-virtual {v1}, Lcom/moonpi/swiftnotes/EditActivity;->finish()V

    const/16 v1, 0x9

    aput-boolean v4, v0, v1

    .line 258
    iget-object v1, p0, Lcom/moonpi/swiftnotes/EditActivity$6;->this$0:Lcom/moonpi/swiftnotes/EditActivity;

    invoke-virtual {v1, v5, v5}, Lcom/moonpi/swiftnotes/EditActivity;->overridePendingTransition(II)V

    const/16 v1, 0xa

    aput-boolean v4, v0, v1

    goto :goto_0
.end method
