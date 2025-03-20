.class public Lkdk/android/simplydo/ItemDesc;
.super Ljava/lang/Object;
.source "ItemDesc.java"


# instance fields
.field private active:Z

.field private volatile id:I

.field private label:Ljava/lang/String;

.field private sorted:Z

.field private star:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;ZZ)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "active"    # Z
    .param p4, "star"    # Z

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lkdk/android/simplydo/ItemDesc;->sorted:Z

    .line 32
    iput p1, p0, Lkdk/android/simplydo/ItemDesc;->id:I

    .line 33
    iput-object p2, p0, Lkdk/android/simplydo/ItemDesc;->label:Ljava/lang/String;

    .line 34
    iput-boolean p3, p0, Lkdk/android/simplydo/ItemDesc;->active:Z

    .line 35
    iput-boolean p4, p0, Lkdk/android/simplydo/ItemDesc;->star:Z

    .line 36
    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lkdk/android/simplydo/ItemDesc;->id:I

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lkdk/android/simplydo/ItemDesc;->label:Ljava/lang/String;

    return-object v0
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lkdk/android/simplydo/ItemDesc;->active:Z

    return v0
.end method

.method public isSorted()Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lkdk/android/simplydo/ItemDesc;->sorted:Z

    return v0
.end method

.method public isStar()Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lkdk/android/simplydo/ItemDesc;->star:Z

    return v0
.end method

.method public setActive(Z)V
    .locals 0
    .param p1, "active"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lkdk/android/simplydo/ItemDesc;->active:Z

    .line 66
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 45
    iput p1, p0, Lkdk/android/simplydo/ItemDesc;->id:I

    .line 46
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lkdk/android/simplydo/ItemDesc;->label:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setSorted(Z)V
    .locals 0
    .param p1, "sorted"    # Z

    .prologue
    .line 85
    iput-boolean p1, p0, Lkdk/android/simplydo/ItemDesc;->sorted:Z

    .line 86
    return-void
.end method

.method public setStar(Z)V
    .locals 0
    .param p1, "star"    # Z

    .prologue
    .line 75
    iput-boolean p1, p0, Lkdk/android/simplydo/ItemDesc;->star:Z

    .line 76
    return-void
.end method
