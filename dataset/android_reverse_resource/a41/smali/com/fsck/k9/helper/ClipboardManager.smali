.class public Lcom/fsck/k9/helper/ClipboardManager;
.super Ljava/lang/Object;
.source "ClipboardManager.java"


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/fsck/k9/helper/ClipboardManager;->context:Landroid/content/Context;

    .line 21
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/fsck/k9/helper/ClipboardManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 12
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 13
    .local v0, "appContext":Landroid/content/Context;
    new-instance v1, Lcom/fsck/k9/helper/ClipboardManager;

    invoke-direct {v1, v0}, Lcom/fsck/k9/helper/ClipboardManager;-><init>(Landroid/content/Context;)V

    return-object v1
.end method


# virtual methods
.method public setText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 32
    iget-object v2, p0, Lcom/fsck/k9/helper/ClipboardManager;->context:Landroid/content/Context;

    const-string v3, "clipboard"

    .line 33
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    .line 34
    .local v1, "clipboardManager":Landroid/content/ClipboardManager;
    invoke-static {p1, p2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 35
    .local v0, "clip":Landroid/content/ClipData;
    invoke-virtual {v1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 36
    return-void
.end method
