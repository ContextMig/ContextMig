.class public final Landroid/support/v4/view/PointerIconCompat;
.super Ljava/lang/Object;
.source "PointerIconCompat.java"


# instance fields
.field private mPointerIcon:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "pointerIcon"    # Ljava/lang/Object;

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, Landroid/support/v4/view/PointerIconCompat;->mPointerIcon:Ljava/lang/Object;

    .line 107
    return-void
.end method

.method public static getSystemIcon(Landroid/content/Context;I)Landroid/support/v4/view/PointerIconCompat;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "style"    # I

    .prologue
    .line 128
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 129
    new-instance v0, Landroid/support/v4/view/PointerIconCompat;

    invoke-static {p0, p1}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/view/PointerIconCompat;-><init>(Ljava/lang/Object;)V

    .line 131
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/support/v4/view/PointerIconCompat;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v4/view/PointerIconCompat;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public getPointerIcon()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Landroid/support/v4/view/PointerIconCompat;->mPointerIcon:Ljava/lang/Object;

    return-object v0
.end method
