.class public abstract Lcom/haringeymobile/ukweather/BaseCityListFragmentWithButtons;
.super Landroid/support/v4/app/ListFragment;
.source "BaseCityListFragmentWithButtons.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/app/ListFragment;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z

.field protected static final COLUMNS_TO_DISPLAY:[Ljava/lang/String;

.field private static final LOADER_ALL_CITY_RECORDS:I

.field protected static final TO:[I


# instance fields
.field protected cursorAdapter:Lcom/haringeymobile/ukweather/BaseCityCursorAdapter;

.field protected parentActivity:Landroid/app/Activity;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/haringeymobile/ukweather/BaseCityListFragmentWithButtons;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x5af96bd0dc198939L    # 1.7621116997713713E130

    const-string v2, "com/haringeymobile/ukweather/BaseCityListFragmentWithButtons"

    const/16 v3, 0x1d

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/haringeymobile/ukweather/BaseCityListFragmentWithButtons;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/BaseCityListFragmentWithButtons;->$jacocoInit()[Z

    move-result-object v0

    .line 25
    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "Name"

    aput-object v2, v1, v4

    sput-object v1, Lcom/haringeymobile/ukweather/BaseCityListFragmentWithButtons;->COLUMNS_TO_DISPLAY:[Ljava/lang/String;

    .line 30
    new-array v1, v3, [I

    const v2, 0x7f0c008b

    aput v2, v1, v4

    sput-object v1, Lcom/haringeymobile/ukweather/BaseCityListFragmentWithButtons;->TO:[I

    const/16 v1, 0x1c

    aput-boolean v3, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/BaseCityListFragmentWithButtons;->$jacocoInit()[Z

    move-result-object v0

    .line 19
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private prepareCityList()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/BaseCityListFragmentWithButtons;->$jacocoInit()[Z

    move-result-object v0

    .line 56
    invoke-virtual {p0}, Lcom/haringeymobile/ukweather/BaseCityListFragmentWithButtons;->getCityCursorAdapter()Lcom/haringeymobile/ukweather/BaseCityCursorAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/haringeymobile/ukweather/BaseCityListFragmentWithButtons;->cursorAdapter:Lcom/haringeymobile/ukweather/BaseCityCursorAdapter;

    const/4 v1, 0x5

    aput-boolean v2, v0, v1

    .line 57
    iget-object v1, p0, Lcom/haringeymobile/ukweather/BaseCityListFragmentWithButtons;->cursorAdapter:Lcom/haringeymobile/ukweather/BaseCityCursorAdapter;

    invoke-virtual {p0, v1}, Lcom/haringeymobile/ukweather/BaseCityListFragmentWithButtons;->setListAdapter(Landroid/widget/ListAdapter;)V

    const/4 v1, 0x6

    aput-boolean v2, v0, v1

    .line 58
    invoke-direct {p0}, Lcom/haringeymobile/ukweather/BaseCityListFragmentWithButtons;->setListViewForClicks()V

    .line 59
    const/4 v1, 0x7

    aput-boolean v2, v0, v1

    return-void
.end method

.method private setListViewForClicks()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/BaseCityListFragmentWithButtons;->$jacocoInit()[Z

    move-result-object v0

    .line 73
    invoke-virtual {p0}, Lcom/haringeymobile/ukweather/BaseCityListFragmentWithButtons;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/16 v2, 0x8

    aput-boolean v3, v0, v2

    .line 74
    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    const/16 v2, 0x9

    aput-boolean v3, v0, v2

    .line 75
    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setFocusable(Z)V

    const/16 v2, 0xa

    aput-boolean v3, v0, v2

    .line 76
    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    const/16 v2, 0xb

    aput-boolean v3, v0, v2

    .line 77
    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setClickable(Z)V

    .line 78
    const/16 v1, 0xc

    aput-boolean v3, v0, v1

    return-void
.end method


# virtual methods
.method protected abstract getCityCursorAdapter()Lcom/haringeymobile/ukweather/BaseCityCursorAdapter;
.end method

.method protected jumpToTheTopOfList()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/BaseCityListFragmentWithButtons;->$jacocoInit()[Z

    move-result-object v0

    .line 118
    const/16 v1, 0x19

    aput-boolean v2, v0, v1

    return v2
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/BaseCityListFragmentWithButtons;->$jacocoInit()[Z

    move-result-object v0

    .line 47
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const/4 v1, 0x2

    aput-boolean v4, v0, v1

    .line 48
    invoke-direct {p0}, Lcom/haringeymobile/ukweather/BaseCityListFragmentWithButtons;->prepareCityList()V

    const/4 v1, 0x3

    aput-boolean v4, v0, v1

    .line 49
    invoke-virtual {p0}, Lcom/haringeymobile/ukweather/BaseCityListFragmentWithButtons;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 50
    const/4 v1, 0x4

    aput-boolean v4, v0, v1

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/BaseCityListFragmentWithButtons;->$jacocoInit()[Z

    move-result-object v0

    .line 41
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onAttach(Landroid/app/Activity;)V

    .line 42
    iput-object p1, p0, Lcom/haringeymobile/ukweather/BaseCityListFragmentWithButtons;->parentActivity:Landroid/app/Activity;

    .line 43
    aput-boolean v1, v0, v1

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/BaseCityListFragmentWithButtons;->$jacocoInit()[Z

    move-result-object v7

    .line 95
    const/4 v3, 0x0

    .line 96
    .local v3, "projection":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 97
    .local v4, "selection":Ljava/lang/String;
    const/4 v5, 0x0

    .line 98
    .local v5, "selectionArgs":[Ljava/lang/String;
    const-string v6, "LastQueryTime DESC"

    const/16 v1, 0x10

    aput-boolean v8, v7, v1

    .line 100
    new-instance v0, Landroid/support/v4/content/CursorLoader;

    iget-object v1, p0, Lcom/haringeymobile/ukweather/BaseCityListFragmentWithButtons;->parentActivity:Landroid/app/Activity;

    sget-object v2, Lcom/haringeymobile/ukweather/database/WeatherContentProvider;->CONTENT_URI_CITY_RECORDS:Landroid/net/Uri;

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .local v0, "cursorLoader":Landroid/support/v4/content/CursorLoader;
    const/16 v1, 0x11

    aput-boolean v8, v7, v1

    return-object v0
.end method

.method public onDetach()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/BaseCityListFragmentWithButtons;->$jacocoInit()[Z

    move-result-object v0

    .line 89
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onDetach()V

    .line 90
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/haringeymobile/ukweather/BaseCityListFragmentWithButtons;->parentActivity:Landroid/app/Activity;

    .line 91
    const/16 v1, 0xf

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/BaseCityListFragmentWithButtons;->$jacocoInit()[Z

    move-result-object v1

    .line 108
    iget-object v2, p0, Lcom/haringeymobile/ukweather/BaseCityListFragmentWithButtons;->cursorAdapter:Lcom/haringeymobile/ukweather/BaseCityCursorAdapter;

    invoke-virtual {v2, p2}, Lcom/haringeymobile/ukweather/BaseCityCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    const/16 v2, 0x12

    aput-boolean v3, v1, v2

    .line 109
    invoke-virtual {p0}, Lcom/haringeymobile/ukweather/BaseCityListFragmentWithButtons;->jumpToTheTopOfList()Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0x13

    aput-boolean v3, v1, v2

    .line 115
    .local v0, "listView":Landroid/widget/ListView;
    :goto_0
    const/16 v2, 0x18

    aput-boolean v3, v1, v2

    return-void

    .line 109
    .end local v0    # "listView":Landroid/widget/ListView;
    :cond_0
    const/16 v2, 0x14

    aput-boolean v3, v1, v2

    .line 110
    invoke-virtual {p0}, Lcom/haringeymobile/ukweather/BaseCityListFragmentWithButtons;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 111
    .restart local v0    # "listView":Landroid/widget/ListView;
    if-nez v0, :cond_1

    const/16 v2, 0x15

    aput-boolean v3, v1, v2

    goto :goto_0

    :cond_1
    const/16 v2, 0x16

    aput-boolean v3, v1, v2

    .line 112
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setSelection(I)V

    const/16 v2, 0x17

    aput-boolean v3, v1, v2

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/BaseCityListFragmentWithButtons;->$jacocoInit()[Z

    move-result-object v0

    .line 19
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/haringeymobile/ukweather/BaseCityListFragmentWithButtons;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    const/16 v1, 0x1b

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/BaseCityListFragmentWithButtons;->$jacocoInit()[Z

    move-result-object v0

    .line 123
    iget-object v1, p0, Lcom/haringeymobile/ukweather/BaseCityListFragmentWithButtons;->cursorAdapter:Lcom/haringeymobile/ukweather/BaseCityCursorAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/haringeymobile/ukweather/BaseCityCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 124
    const/16 v1, 0x1a

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/BaseCityListFragmentWithButtons;->$jacocoInit()[Z

    move-result-object v0

    .line 82
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onResume()V

    const/16 v1, 0xd

    aput-boolean v4, v0, v1

    .line 84
    invoke-virtual {p0}, Lcom/haringeymobile/ukweather/BaseCityListFragmentWithButtons;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 85
    const/16 v1, 0xe

    aput-boolean v4, v0, v1

    return-void
.end method
