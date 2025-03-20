.class public final Lorg/mozilla/focus/architecture/NonNullMutableLiveData;
.super Lorg/mozilla/focus/architecture/NonNullLiveData;
.source "NonNullMutableLiveData.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/mozilla/focus/architecture/NonNullLiveData",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "initialValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lorg/mozilla/focus/architecture/NonNullLiveData;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 25
    invoke-super {p0}, Lorg/mozilla/focus/architecture/NonNullLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public postValue(Ljava/lang/Object;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-super {p0, p1}, Lorg/mozilla/focus/architecture/NonNullLiveData;->postValue(Ljava/lang/Object;)V

    .line 15
    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-super {p0, p1}, Lorg/mozilla/focus/architecture/NonNullLiveData;->setValue(Ljava/lang/Object;)V

    .line 22
    return-void
.end method
