.class public Lorg/mozilla/focus/firstrun/FirstrunPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "FirstrunPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/focus/firstrun/FirstrunPagerAdapter$FirstrunPage;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final listener:Landroid/view/View$OnClickListener;

.field private final pages:[Lorg/mozilla/focus/firstrun/FirstrunPagerAdapter$FirstrunPage;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 38
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 39
    const v1, 0x7f0f0028

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, "appName":Ljava/lang/String;
    iput-object p1, p0, Lorg/mozilla/focus/firstrun/FirstrunPagerAdapter;->context:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lorg/mozilla/focus/firstrun/FirstrunPagerAdapter;->listener:Landroid/view/View$OnClickListener;

    .line 43
    const/4 v1, 0x4

    new-array v1, v1, [Lorg/mozilla/focus/firstrun/FirstrunPagerAdapter$FirstrunPage;

    new-instance v2, Lorg/mozilla/focus/firstrun/FirstrunPagerAdapter$FirstrunPage;

    const v3, 0x7f0f007c

    .line 45
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0f007b

    .line 46
    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0800ae

    invoke-direct {v2, v3, v4, v5, v7}, Lorg/mozilla/focus/firstrun/FirstrunPagerAdapter$FirstrunPage;-><init>(Ljava/lang/String;Ljava/lang/String;ILorg/mozilla/focus/firstrun/FirstrunPagerAdapter$1;)V

    aput-object v2, v1, v8

    new-instance v2, Lorg/mozilla/focus/firstrun/FirstrunPagerAdapter$FirstrunPage;

    const v3, 0x7f0f0081

    .line 49
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0f0080

    .line 50
    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0800b1

    invoke-direct {v2, v3, v4, v5, v7}, Lorg/mozilla/focus/firstrun/FirstrunPagerAdapter$FirstrunPage;-><init>(Ljava/lang/String;Ljava/lang/String;ILorg/mozilla/focus/firstrun/FirstrunPagerAdapter$1;)V

    aput-object v2, v1, v9

    const/4 v2, 0x2

    new-instance v3, Lorg/mozilla/focus/firstrun/FirstrunPagerAdapter$FirstrunPage;

    const v4, 0x7f0f0083

    .line 53
    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0f0082

    new-array v6, v9, [Ljava/lang/Object;

    aput-object v0, v6, v8

    .line 54
    invoke-virtual {p1, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0800b0

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/mozilla/focus/firstrun/FirstrunPagerAdapter$FirstrunPage;-><init>(Ljava/lang/String;Ljava/lang/String;ILorg/mozilla/focus/firstrun/FirstrunPagerAdapter$1;)V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Lorg/mozilla/focus/firstrun/FirstrunPagerAdapter$FirstrunPage;

    const v4, 0x7f0f007f

    .line 57
    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0f007e

    new-array v6, v9, [Ljava/lang/Object;

    aput-object v0, v6, v8

    .line 58
    invoke-virtual {p1, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0800af

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/mozilla/focus/firstrun/FirstrunPagerAdapter$FirstrunPage;-><init>(Ljava/lang/String;Ljava/lang/String;ILorg/mozilla/focus/firstrun/FirstrunPagerAdapter$1;)V

    aput-object v3, v1, v2

    iput-object v1, p0, Lorg/mozilla/focus/firstrun/FirstrunPagerAdapter;->pages:[Lorg/mozilla/focus/firstrun/FirstrunPagerAdapter$FirstrunPage;

    .line 61
    return-void
.end method

.method private getView(ILandroid/support/v4/view/ViewPager;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "pager"    # Landroid/support/v4/view/ViewPager;

    .prologue
    .line 64
    iget-object v6, p0, Lorg/mozilla/focus/firstrun/FirstrunPagerAdapter;->context:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f0b0036

    const/4 v8, 0x0

    invoke-virtual {v6, v7, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 67
    .local v5, "view":Landroid/view/View;
    iget-object v6, p0, Lorg/mozilla/focus/firstrun/FirstrunPagerAdapter;->pages:[Lorg/mozilla/focus/firstrun/FirstrunPagerAdapter$FirstrunPage;

    aget-object v2, v6, p1

    .line 69
    .local v2, "page":Lorg/mozilla/focus/firstrun/FirstrunPagerAdapter$FirstrunPage;
    const v6, 0x7f090119

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 70
    .local v4, "titleView":Landroid/widget/TextView;
    iget-object v6, v2, Lorg/mozilla/focus/firstrun/FirstrunPagerAdapter$FirstrunPage;->title:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    const v6, 0x7f090111

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 73
    .local v3, "textView":Landroid/widget/TextView;
    iget-object v6, v2, Lorg/mozilla/focus/firstrun/FirstrunPagerAdapter$FirstrunPage;->text:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    const v6, 0x7f09008f

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 76
    .local v1, "imageView":Landroid/widget/ImageView;
    iget v6, v2, Lorg/mozilla/focus/firstrun/FirstrunPagerAdapter$FirstrunPage;->imageResource:I

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 78
    const v6, 0x7f090038

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 79
    .local v0, "buttonView":Landroid/widget/Button;
    iget-object v6, p0, Lorg/mozilla/focus/firstrun/FirstrunPagerAdapter;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object v6, p0, Lorg/mozilla/focus/firstrun/FirstrunPagerAdapter;->pages:[Lorg/mozilla/focus/firstrun/FirstrunPagerAdapter$FirstrunPage;

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-ne p1, v6, :cond_0

    .line 81
    const v6, 0x7f0f007a

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setText(I)V

    .line 82
    const v6, 0x7f090079

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setId(I)V

    .line 88
    :goto_0
    return-object v5

    .line 84
    :cond_0
    const v6, 0x7f0f007d

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setText(I)V

    .line 85
    const v6, 0x7f0900b4

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setId(I)V

    goto :goto_0
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "view"    # Ljava/lang/Object;

    .prologue
    .line 113
    check-cast p3, Landroid/view/View;

    .end local p3    # "view":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 114
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lorg/mozilla/focus/firstrun/FirstrunPagerAdapter;->pages:[Lorg/mozilla/focus/firstrun/FirstrunPagerAdapter$FirstrunPage;

    array-length v0, v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 103
    move-object v0, p1

    check-cast v0, Landroid/support/v4/view/ViewPager;

    .line 104
    .local v0, "pager":Landroid/support/v4/view/ViewPager;
    invoke-direct {p0, p2, v0}, Lorg/mozilla/focus/firstrun/FirstrunPagerAdapter;->getView(ILandroid/support/v4/view/ViewPager;)Landroid/view/View;

    move-result-object v1

    .line 106
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;)V

    .line 108
    return-object v1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 93
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
