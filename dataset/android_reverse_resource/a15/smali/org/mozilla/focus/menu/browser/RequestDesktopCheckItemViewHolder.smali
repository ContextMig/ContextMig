.class Lorg/mozilla/focus/menu/browser/RequestDesktopCheckItemViewHolder;
.super Lorg/mozilla/focus/menu/browser/BrowserMenuViewHolder;
.source "RequestDesktopCheckItemViewHolder.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private checkbox:Landroid/widget/CheckBox;

.field private final fragment:Lorg/mozilla/focus/fragment/BrowserFragment;


# direct methods
.method constructor <init>(Landroid/view/View;Lorg/mozilla/focus/fragment/BrowserFragment;)V
    .locals 2
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "fragment"    # Lorg/mozilla/focus/fragment/BrowserFragment;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lorg/mozilla/focus/menu/browser/BrowserMenuViewHolder;-><init>(Landroid/view/View;)V

    .line 28
    iput-object p2, p0, Lorg/mozilla/focus/menu/browser/RequestDesktopCheckItemViewHolder;->fragment:Lorg/mozilla/focus/fragment/BrowserFragment;

    .line 30
    const v0, 0x7f090040

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lorg/mozilla/focus/menu/browser/RequestDesktopCheckItemViewHolder;->checkbox:Landroid/widget/CheckBox;

    .line 31
    iget-object v0, p0, Lorg/mozilla/focus/menu/browser/RequestDesktopCheckItemViewHolder;->checkbox:Landroid/widget/CheckBox;

    invoke-virtual {p2}, Lorg/mozilla/focus/fragment/BrowserFragment;->getSession()Lorg/mozilla/focus/session/Session;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mozilla/focus/session/Session;->shouldRequestDesktopSite()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 32
    iget-object v0, p0, Lorg/mozilla/focus/menu/browser/RequestDesktopCheckItemViewHolder;->checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 33
    return-void
.end method

.method static synthetic access$000(Lorg/mozilla/focus/menu/browser/RequestDesktopCheckItemViewHolder;)Lorg/mozilla/focus/fragment/BrowserFragment;
    .locals 1
    .param p0, "x0"    # Lorg/mozilla/focus/menu/browser/RequestDesktopCheckItemViewHolder;

    .prologue
    .line 18
    iget-object v0, p0, Lorg/mozilla/focus/menu/browser/RequestDesktopCheckItemViewHolder;->fragment:Lorg/mozilla/focus/fragment/BrowserFragment;

    return-object v0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 37
    iget-object v0, p0, Lorg/mozilla/focus/menu/browser/RequestDesktopCheckItemViewHolder;->fragment:Lorg/mozilla/focus/fragment/BrowserFragment;

    invoke-virtual {v0, p2}, Lorg/mozilla/focus/fragment/BrowserFragment;->setShouldRequestDesktop(Z)V

    .line 38
    invoke-static {p2}, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->desktopRequestCheckEvent(Z)V

    .line 42
    sget-object v0, Lmozilla/components/support/utils/ThreadUtils;->INSTANCE:Lmozilla/components/support/utils/ThreadUtils;

    new-instance v1, Lorg/mozilla/focus/menu/browser/RequestDesktopCheckItemViewHolder$1;

    invoke-direct {v1, p0}, Lorg/mozilla/focus/menu/browser/RequestDesktopCheckItemViewHolder$1;-><init>(Lorg/mozilla/focus/menu/browser/RequestDesktopCheckItemViewHolder;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Lmozilla/components/support/utils/ThreadUtils;->postToMainThreadDelayed(Ljava/lang/Runnable;J)V

    .line 49
    return-void
.end method
