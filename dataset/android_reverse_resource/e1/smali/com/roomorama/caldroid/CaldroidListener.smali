.class public abstract Lcom/roomorama/caldroid/CaldroidListener;
.super Ljava/lang/Object;
.source "CaldroidListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaldroidViewCreated()V
    .locals 0

    .prologue
    .line 56
    return-void
.end method

.method public onChangeMonth(II)V
    .locals 0
    .param p1, "month"    # I
    .param p2, "year"    # I

    .prologue
    .line 45
    return-void
.end method

.method public onLongClickDate(Ljava/util/Date;Landroid/view/View;)V
    .locals 0
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 34
    return-void
.end method

.method public abstract onSelectDate(Ljava/util/Date;Landroid/view/View;)V
.end method
