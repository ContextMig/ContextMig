.class public abstract Landroid/support/v4/content/res/ResourcesCompat$FontCallback;
.super Ljava/lang/Object;
.source "ResourcesCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/content/res/ResourcesCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "FontCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final callbackFailAsync(ILandroid/os/Handler;)V
    .locals 1
    .param p1, "reason"    # I
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 261
    if-nez p2, :cond_0

    .line 262
    new-instance p2, Landroid/os/Handler;

    .end local p2    # "handler":Landroid/os/Handler;
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 264
    .restart local p2    # "handler":Landroid/os/Handler;
    :cond_0
    new-instance v0, Landroid/support/v4/content/res/ResourcesCompat$FontCallback$2;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/content/res/ResourcesCompat$FontCallback$2;-><init>(Landroid/support/v4/content/res/ResourcesCompat$FontCallback;I)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 270
    return-void
.end method

.method public final callbackSuccessAsync(Landroid/graphics/Typeface;Landroid/os/Handler;)V
    .locals 1
    .param p1, "typeface"    # Landroid/graphics/Typeface;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 242
    if-nez p2, :cond_0

    .line 243
    new-instance p2, Landroid/os/Handler;

    .end local p2    # "handler":Landroid/os/Handler;
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 245
    .restart local p2    # "handler":Landroid/os/Handler;
    :cond_0
    new-instance v0, Landroid/support/v4/content/res/ResourcesCompat$FontCallback$1;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/content/res/ResourcesCompat$FontCallback$1;-><init>(Landroid/support/v4/content/res/ResourcesCompat$FontCallback;Landroid/graphics/Typeface;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 251
    return-void
.end method

.method public abstract onFontRetrievalFailed(I)V
.end method

.method public abstract onFontRetrieved(Landroid/graphics/Typeface;)V
.end method
