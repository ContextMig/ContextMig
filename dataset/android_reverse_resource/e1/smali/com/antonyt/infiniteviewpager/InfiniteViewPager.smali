.class public Lcom/antonyt/infiniteviewpager/InfiniteViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "InfiniteViewPager.java"


# static fields
.field public static final OFFSET:I = 0x3e8


# instance fields
.field private datesInMonth:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lhirondelle/date4j/DateTime;",
            ">;"
        }
    .end annotation
.end field

.field private enabled:Z

.field private rowHeight:I

.field private sixWeeksInCalendar:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/antonyt/infiniteviewpager/InfiniteViewPager;->enabled:Z

    .line 38
    iput-boolean v1, p0, Lcom/antonyt/infiniteviewpager/InfiniteViewPager;->sixWeeksInCalendar:Z

    .line 43
    iput v1, p0, Lcom/antonyt/infiniteviewpager/InfiniteViewPager;->rowHeight:I

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/antonyt/infiniteviewpager/InfiniteViewPager;->enabled:Z

    .line 38
    iput-boolean v1, p0, Lcom/antonyt/infiniteviewpager/InfiniteViewPager;->sixWeeksInCalendar:Z

    .line 43
    iput v1, p0, Lcom/antonyt/infiniteviewpager/InfiniteViewPager;->rowHeight:I

    .line 74
    return-void
.end method


# virtual methods
.method public getDatesInMonth()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lhirondelle/date4j/DateTime;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lcom/antonyt/infiniteviewpager/InfiniteViewPager;->datesInMonth:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/antonyt/infiniteviewpager/InfiniteViewPager;->enabled:Z

    return v0
.end method

.method public isSixWeeksInCalendar()Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/antonyt/infiniteviewpager/InfiniteViewPager;->sixWeeksInCalendar:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/antonyt/infiniteviewpager/InfiniteViewPager;->enabled:Z

    if-eqz v0, :cond_0

    .line 98
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 100
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/4 v5, 0x0

    .line 115
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/ViewPager;->onMeasure(II)V

    .line 118
    iget-object v4, p0, Lcom/antonyt/infiniteviewpager/InfiniteViewPager;->datesInMonth:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    div-int/lit8 v2, v4, 0x7

    .line 120
    .local v2, "rows":I
    invoke-virtual {p0}, Lcom/antonyt/infiniteviewpager/InfiniteViewPager;->getChildCount()I

    move-result v4

    if-lez v4, :cond_0

    iget v4, p0, Lcom/antonyt/infiniteviewpager/InfiniteViewPager;->rowHeight:I

    if-nez v4, :cond_0

    .line 121
    invoke-virtual {p0, v5}, Lcom/antonyt/infiniteviewpager/InfiniteViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 122
    .local v1, "firstChild":Landroid/view/View;
    invoke-virtual {p0}, Lcom/antonyt/infiniteviewpager/InfiniteViewPager;->getMeasuredWidth()I

    move-result v3

    .line 125
    .local v3, "width":I
    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 130
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 129
    invoke-virtual {v1, p1, v4}, Landroid/view/View;->measure(II)V

    .line 132
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    iput v4, p0, Lcom/antonyt/infiniteviewpager/InfiniteViewPager;->rowHeight:I

    .line 139
    .end local v1    # "firstChild":Landroid/view/View;
    .end local v3    # "width":I
    :cond_0
    iget-boolean v4, p0, Lcom/antonyt/infiniteviewpager/InfiniteViewPager;->sixWeeksInCalendar:Z

    if-eqz v4, :cond_1

    .line 140
    iget v4, p0, Lcom/antonyt/infiniteviewpager/InfiniteViewPager;->rowHeight:I

    mul-int/lit8 v0, v4, 0x6

    .line 146
    .local v0, "calHeight":I
    :goto_0
    add-int/lit8 v0, v0, -0xc

    .line 147
    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 150
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/ViewPager;->onMeasure(II)V

    .line 151
    return-void

    .line 142
    .end local v0    # "calHeight":I
    :cond_1
    iget v4, p0, Lcom/antonyt/infiniteviewpager/InfiniteViewPager;->rowHeight:I

    mul-int v0, v4, v2

    .restart local v0    # "calHeight":I
    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/antonyt/infiniteviewpager/InfiniteViewPager;->enabled:Z

    if-eqz v0, :cond_0

    .line 90
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 92
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAdapter(Landroid/support/v4/view/PagerAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/support/v4/view/PagerAdapter;

    .prologue
    .line 82
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 84
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/antonyt/infiniteviewpager/InfiniteViewPager;->setCurrentItem(I)V

    .line 85
    return-void
.end method

.method public setDatesInMonth(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lhirondelle/date4j/DateTime;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p1, "datesInMonth":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lhirondelle/date4j/DateTime;>;"
    iput-object p1, p0, Lcom/antonyt/infiniteviewpager/InfiniteViewPager;->datesInMonth:Ljava/util/ArrayList;

    .line 64
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/antonyt/infiniteviewpager/InfiniteViewPager;->enabled:Z

    .line 52
    return-void
.end method

.method public setSixWeeksInCalendar(Z)V
    .locals 1
    .param p1, "sixWeeksInCalendar"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/antonyt/infiniteviewpager/InfiniteViewPager;->sixWeeksInCalendar:Z

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/antonyt/infiniteviewpager/InfiniteViewPager;->rowHeight:I

    .line 69
    return-void
.end method
