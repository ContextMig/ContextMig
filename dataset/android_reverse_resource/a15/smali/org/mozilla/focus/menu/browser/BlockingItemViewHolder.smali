.class Lorg/mozilla/focus/menu/browser/BlockingItemViewHolder;
.super Lorg/mozilla/focus/menu/browser/BrowserMenuViewHolder;
.source "BlockingItemViewHolder.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private final fragment:Lorg/mozilla/focus/fragment/BrowserFragment;

.field private final trackerCounter:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;Lorg/mozilla/focus/fragment/BrowserFragment;)V
    .locals 3
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "fragment"    # Lorg/mozilla/focus/fragment/BrowserFragment;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lorg/mozilla/focus/menu/browser/BrowserMenuViewHolder;-><init>(Landroid/view/View;)V

    .line 28
    iput-object p2, p0, Lorg/mozilla/focus/menu/browser/BlockingItemViewHolder;->fragment:Lorg/mozilla/focus/fragment/BrowserFragment;

    .line 30
    const v2, 0x7f09002f

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    .line 31
    .local v1, "switchView":Landroid/widget/Switch;
    invoke-virtual {p2}, Lorg/mozilla/focus/fragment/BrowserFragment;->getSession()Lorg/mozilla/focus/session/Session;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mozilla/focus/session/Session;->isBlockingEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 32
    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 34
    const v2, 0x7f090081

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 35
    .local v0, "helpView":Landroid/view/View;
    new-instance v2, Lorg/mozilla/focus/menu/browser/BlockingItemViewHolder$1;

    invoke-direct {v2, p0}, Lorg/mozilla/focus/menu/browser/BlockingItemViewHolder$1;-><init>(Lorg/mozilla/focus/menu/browser/BlockingItemViewHolder;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    const v2, 0x7f090122

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lorg/mozilla/focus/menu/browser/BlockingItemViewHolder;->trackerCounter:Landroid/widget/TextView;

    .line 46
    invoke-virtual {p2}, Lorg/mozilla/focus/fragment/BrowserFragment;->getSession()Lorg/mozilla/focus/session/Session;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mozilla/focus/session/Session;->getBlockedTrackers()Lorg/mozilla/focus/architecture/NonNullLiveData;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mozilla/focus/architecture/NonNullLiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/mozilla/focus/menu/browser/BlockingItemViewHolder;->updateTrackers(I)V

    .line 47
    return-void
.end method

.method static synthetic access$000(Lorg/mozilla/focus/menu/browser/BlockingItemViewHolder;)Lorg/mozilla/focus/fragment/BrowserFragment;
    .locals 1
    .param p0, "x0"    # Lorg/mozilla/focus/menu/browser/BlockingItemViewHolder;

    .prologue
    .line 19
    iget-object v0, p0, Lorg/mozilla/focus/menu/browser/BlockingItemViewHolder;->fragment:Lorg/mozilla/focus/fragment/BrowserFragment;

    return-object v0
.end method

.method private disableTrackingCount(Landroid/widget/TextView;)V
    .locals 2
    .param p1, "view"    # Landroid/widget/TextView;

    .prologue
    .line 67
    sget-object v0, Lmozilla/components/support/utils/ThreadUtils;->INSTANCE:Lmozilla/components/support/utils/ThreadUtils;

    new-instance v1, Lorg/mozilla/focus/menu/browser/BlockingItemViewHolder$3;

    invoke-direct {v1, p0, p1}, Lorg/mozilla/focus/menu/browser/BlockingItemViewHolder$3;-><init>(Lorg/mozilla/focus/menu/browser/BlockingItemViewHolder;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Lmozilla/components/support/utils/ThreadUtils;->postToMainThread(Ljava/lang/Runnable;)V

    .line 73
    return-void
.end method

.method private updateTrackingCount(Landroid/widget/TextView;I)V
    .locals 2
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "count"    # I

    .prologue
    .line 58
    sget-object v0, Lmozilla/components/support/utils/ThreadUtils;->INSTANCE:Lmozilla/components/support/utils/ThreadUtils;

    new-instance v1, Lorg/mozilla/focus/menu/browser/BlockingItemViewHolder$2;

    invoke-direct {v1, p0, p1, p2}, Lorg/mozilla/focus/menu/browser/BlockingItemViewHolder$2;-><init>(Lorg/mozilla/focus/menu/browser/BlockingItemViewHolder;Landroid/widget/TextView;I)V

    invoke-virtual {v0, v1}, Lmozilla/components/support/utils/ThreadUtils;->postToMainThread(Ljava/lang/Runnable;)V

    .line 64
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 77
    iget-object v0, p0, Lorg/mozilla/focus/menu/browser/BlockingItemViewHolder;->fragment:Lorg/mozilla/focus/fragment/BrowserFragment;

    invoke-virtual {v0, p2}, Lorg/mozilla/focus/fragment/BrowserFragment;->setBlockingEnabled(Z)V

    .line 79
    invoke-static {p2}, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->blockingSwitchEvent(Z)V

    .line 83
    sget-object v0, Lmozilla/components/support/utils/ThreadUtils;->INSTANCE:Lmozilla/components/support/utils/ThreadUtils;

    new-instance v1, Lorg/mozilla/focus/menu/browser/BlockingItemViewHolder$4;

    invoke-direct {v1, p0}, Lorg/mozilla/focus/menu/browser/BlockingItemViewHolder$4;-><init>(Lorg/mozilla/focus/menu/browser/BlockingItemViewHolder;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Lmozilla/components/support/utils/ThreadUtils;->postToMainThreadDelayed(Ljava/lang/Runnable;J)V

    .line 91
    return-void
.end method

.method updateTrackers(I)V
    .locals 1
    .param p1, "trackers"    # I

    .prologue
    .line 50
    iget-object v0, p0, Lorg/mozilla/focus/menu/browser/BlockingItemViewHolder;->fragment:Lorg/mozilla/focus/fragment/BrowserFragment;

    invoke-virtual {v0}, Lorg/mozilla/focus/fragment/BrowserFragment;->getSession()Lorg/mozilla/focus/session/Session;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/focus/session/Session;->isBlockingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lorg/mozilla/focus/menu/browser/BlockingItemViewHolder;->trackerCounter:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lorg/mozilla/focus/menu/browser/BlockingItemViewHolder;->updateTrackingCount(Landroid/widget/TextView;I)V

    .line 55
    :goto_0
    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Lorg/mozilla/focus/menu/browser/BlockingItemViewHolder;->trackerCounter:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lorg/mozilla/focus/menu/browser/BlockingItemViewHolder;->disableTrackingCount(Landroid/widget/TextView;)V

    goto :goto_0
.end method
