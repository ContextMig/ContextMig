.class public Lkdk/android/simplydo/ListDesc;
.super Ljava/lang/Object;
.source "ListDesc.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private activeItems:I

.field private id:I

.field private label:Ljava/lang/String;

.field private totalItems:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;II)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "activeItems"    # I
    .param p4, "totalItems"    # I

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput p1, p0, Lkdk/android/simplydo/ListDesc;->id:I

    .line 43
    iput-object p2, p0, Lkdk/android/simplydo/ListDesc;->label:Ljava/lang/String;

    .line 44
    iput p3, p0, Lkdk/android/simplydo/ListDesc;->activeItems:I

    .line 45
    iput p4, p0, Lkdk/android/simplydo/ListDesc;->totalItems:I

    .line 46
    return-void
.end method


# virtual methods
.method public getActiveItems()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lkdk/android/simplydo/ListDesc;->activeItems:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lkdk/android/simplydo/ListDesc;->id:I

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lkdk/android/simplydo/ListDesc;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalItems()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lkdk/android/simplydo/ListDesc;->totalItems:I

    return v0
.end method

.method public setActiveItems(I)V
    .locals 0
    .param p1, "inactiveItems"    # I

    .prologue
    .line 75
    iput p1, p0, Lkdk/android/simplydo/ListDesc;->activeItems:I

    .line 76
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 55
    iput p1, p0, Lkdk/android/simplydo/ListDesc;->id:I

    .line 56
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lkdk/android/simplydo/ListDesc;->label:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setTotalItems(I)V
    .locals 0
    .param p1, "totalItems"    # I

    .prologue
    .line 85
    iput p1, p0, Lkdk/android/simplydo/ListDesc;->totalItems:I

    .line 86
    return-void
.end method
