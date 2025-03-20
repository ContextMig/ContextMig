.class public abstract Lorg/mozilla/focus/architecture/NonNullObserver;
.super Ljava/lang/Object;
.source "NonNullObserver.kt"

# interfaces
.implements Landroid/arch/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/arch/lifecycle/Observer",
        "<TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNonNullObserver.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NonNullObserver.kt\norg/mozilla/focus/architecture/NonNullObserver\n*L\n1#1,18:1\n*E\n"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Object;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 13
    if-eqz p1, :cond_0

    move-object v0, p1

    .line 14
    .local v0, "it":Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lorg/mozilla/focus/architecture/NonNullObserver;->onValueChanged(Ljava/lang/Object;)V

    .line 15
    nop

    .line 16
    .end local v0    # "it":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method protected abstract onValueChanged(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
