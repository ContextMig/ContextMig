.class Lorg/mozilla/focus/utils/ViewUtils$ShowKeyboard;
.super Ljava/lang/Object;
.source "ViewUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/focus/utils/ViewUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ShowKeyboard"
.end annotation


# instance fields
.field private final handler:Landroid/os/Handler;

.field private tries:I

.field private final viewReferemce:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/mozilla/focus/utils/ViewUtils$ShowKeyboard;->viewReferemce:Ljava/lang/ref/WeakReference;

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/mozilla/focus/utils/ViewUtils$ShowKeyboard;->handler:Landroid/os/Handler;

    .line 53
    const/16 v0, 0xa

    iput v0, p0, Lorg/mozilla/focus/utils/ViewUtils$ShowKeyboard;->tries:I

    .line 54
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Lorg/mozilla/focus/utils/ViewUtils$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/View;
    .param p2, "x1"    # Lorg/mozilla/focus/utils/ViewUtils$1;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lorg/mozilla/focus/utils/ViewUtils$ShowKeyboard;-><init>(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Lorg/mozilla/focus/utils/ViewUtils$ShowKeyboard;)V
    .locals 0
    .param p0, "x0"    # Lorg/mozilla/focus/utils/ViewUtils$ShowKeyboard;

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/mozilla/focus/utils/ViewUtils$ShowKeyboard;->post()V

    return-void
.end method

.method private post()V
    .locals 4

    .prologue
    .line 102
    iget v0, p0, Lorg/mozilla/focus/utils/ViewUtils$ShowKeyboard;->tries:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/mozilla/focus/utils/ViewUtils$ShowKeyboard;->tries:I

    .line 103
    iget-object v0, p0, Lorg/mozilla/focus/utils/ViewUtils$ShowKeyboard;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 104
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 58
    iget v3, p0, Lorg/mozilla/focus/utils/ViewUtils$ShowKeyboard;->tries:I

    if-gtz v3, :cond_1

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    iget-object v3, p0, Lorg/mozilla/focus/utils/ViewUtils$ShowKeyboard;->viewReferemce:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 63
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 68
    invoke-virtual {v2}, Landroid/view/View;->isFocusable()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->isFocusableInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 73
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v3

    if-nez v3, :cond_2

    .line 75
    invoke-direct {p0}, Lorg/mozilla/focus/utils/ViewUtils$ShowKeyboard;->post()V

    goto :goto_0

    .line 79
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 80
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 84
    const-string v3, "input_method"

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 85
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_0

    .line 89
    invoke-virtual {v1, v2}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 91
    invoke-direct {p0}, Lorg/mozilla/focus/utils/ViewUtils$ShowKeyboard;->post()V

    goto :goto_0

    .line 95
    :cond_3
    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 97
    invoke-direct {p0}, Lorg/mozilla/focus/utils/ViewUtils$ShowKeyboard;->post()V

    goto :goto_0
.end method
