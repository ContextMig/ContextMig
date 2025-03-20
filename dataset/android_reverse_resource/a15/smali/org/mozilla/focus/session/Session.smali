.class public Lorg/mozilla/focus/session/Session;
.super Ljava/lang/Object;
.source "Session.java"


# instance fields
.field private customTabConfig:Lorg/mozilla/focus/customtabs/CustomTabConfig;

.field private isBlockingEnabled:Z

.field private isRecorded:Z

.field private final loading:Lorg/mozilla/focus/architecture/NonNullMutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mozilla/focus/architecture/NonNullMutableLiveData",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final progress:Lorg/mozilla/focus/architecture/NonNullMutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mozilla/focus/architecture/NonNullMutableLiveData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private requestDesktopSite:Z

.field private searchTerms:Ljava/lang/String;

.field private final secure:Lorg/mozilla/focus/architecture/NonNullMutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mozilla/focus/architecture/NonNullMutableLiveData",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final securityOrigin:Landroid/arch/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/MutableLiveData",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final securityVerifier:Landroid/arch/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/MutableLiveData",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private source:Lorg/mozilla/focus/session/Source;

.field private final trackersBlocked:Lorg/mozilla/focus/architecture/NonNullMutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mozilla/focus/architecture/NonNullMutableLiveData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final url:Lorg/mozilla/focus/architecture/NonNullMutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mozilla/focus/architecture/NonNullMutableLiveData",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final uuid:Ljava/lang/String;

.field private webviewState:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Ljava/lang/String;Lorg/mozilla/focus/customtabs/CustomTabConfig;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "customTabConfig"    # Lorg/mozilla/focus/customtabs/CustomTabConfig;

    .prologue
    .line 58
    sget-object v0, Lorg/mozilla/focus/session/Source;->CUSTOM_TAB:Lorg/mozilla/focus/session/Source;

    invoke-direct {p0, v0, p1}, Lorg/mozilla/focus/session/Session;-><init>(Lorg/mozilla/focus/session/Source;Ljava/lang/String;)V

    .line 60
    iput-object p2, p0, Lorg/mozilla/focus/session/Session;->customTabConfig:Lorg/mozilla/focus/customtabs/CustomTabConfig;

    .line 61
    return-void
.end method

.method constructor <init>(Lorg/mozilla/focus/session/Source;Ljava/lang/String;)V
    .locals 3
    .param p1, "source"    # Lorg/mozilla/focus/session/Source;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/focus/session/Session;->uuid:Ljava/lang/String;

    .line 42
    iput-object p1, p0, Lorg/mozilla/focus/session/Session;->source:Lorg/mozilla/focus/session/Source;

    .line 44
    new-instance v0, Lorg/mozilla/focus/architecture/NonNullMutableLiveData;

    invoke-direct {v0, p2}, Lorg/mozilla/focus/architecture/NonNullMutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/mozilla/focus/session/Session;->url:Lorg/mozilla/focus/architecture/NonNullMutableLiveData;

    .line 45
    new-instance v0, Lorg/mozilla/focus/architecture/NonNullMutableLiveData;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mozilla/focus/architecture/NonNullMutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/mozilla/focus/session/Session;->progress:Lorg/mozilla/focus/architecture/NonNullMutableLiveData;

    .line 46
    new-instance v0, Lorg/mozilla/focus/architecture/NonNullMutableLiveData;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mozilla/focus/architecture/NonNullMutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/mozilla/focus/session/Session;->secure:Lorg/mozilla/focus/architecture/NonNullMutableLiveData;

    .line 47
    new-instance v0, Lorg/mozilla/focus/architecture/NonNullMutableLiveData;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mozilla/focus/architecture/NonNullMutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/mozilla/focus/session/Session;->loading:Lorg/mozilla/focus/architecture/NonNullMutableLiveData;

    .line 48
    new-instance v0, Lorg/mozilla/focus/architecture/NonNullMutableLiveData;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mozilla/focus/architecture/NonNullMutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/mozilla/focus/session/Session;->trackersBlocked:Lorg/mozilla/focus/architecture/NonNullMutableLiveData;

    .line 50
    new-instance v0, Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lorg/mozilla/focus/session/Session;->securityOrigin:Landroid/arch/lifecycle/MutableLiveData;

    .line 51
    new-instance v0, Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lorg/mozilla/focus/session/Session;->securityVerifier:Landroid/arch/lifecycle/MutableLiveData;

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/focus/session/Session;->isBlockingEnabled:Z

    .line 54
    iput-boolean v2, p0, Lorg/mozilla/focus/session/Session;->isRecorded:Z

    .line 55
    return-void
.end method


# virtual methods
.method clearSearchTerms()V
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/focus/session/Session;->searchTerms:Ljava/lang/String;

    .line 129
    return-void
.end method

.method clearSource()V
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lorg/mozilla/focus/session/Source;->NONE:Lorg/mozilla/focus/session/Source;

    iput-object v0, p0, Lorg/mozilla/focus/session/Session;->source:Lorg/mozilla/focus/session/Source;

    .line 65
    return-void
.end method

.method public getBlockedTrackers()Lorg/mozilla/focus/architecture/NonNullLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/mozilla/focus/architecture/NonNullLiveData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lorg/mozilla/focus/session/Session;->trackersBlocked:Lorg/mozilla/focus/architecture/NonNullMutableLiveData;

    return-object v0
.end method

.method public getCustomTabConfig()Lorg/mozilla/focus/customtabs/CustomTabConfig;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lorg/mozilla/focus/session/Session;->customTabConfig:Lorg/mozilla/focus/customtabs/CustomTabConfig;

    return-object v0
.end method

.method public getLoading()Lorg/mozilla/focus/architecture/NonNullLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/mozilla/focus/architecture/NonNullLiveData",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lorg/mozilla/focus/session/Session;->loading:Lorg/mozilla/focus/architecture/NonNullMutableLiveData;

    return-object v0
.end method

.method public getProgress()Lorg/mozilla/focus/architecture/NonNullLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/mozilla/focus/architecture/NonNullLiveData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lorg/mozilla/focus/session/Session;->progress:Lorg/mozilla/focus/architecture/NonNullMutableLiveData;

    return-object v0
.end method

.method public getSearchTerms()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lorg/mozilla/focus/session/Session;->searchTerms:Ljava/lang/String;

    return-object v0
.end method

.method public getSecure()Lorg/mozilla/focus/architecture/NonNullLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/mozilla/focus/architecture/NonNullLiveData",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lorg/mozilla/focus/session/Session;->secure:Lorg/mozilla/focus/architecture/NonNullMutableLiveData;

    return-object v0
.end method

.method public getSecurityOrigin()Landroid/arch/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/LiveData",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lorg/mozilla/focus/session/Session;->securityOrigin:Landroid/arch/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getSecurityVerifier()Landroid/arch/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/LiveData",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lorg/mozilla/focus/session/Session;->securityVerifier:Landroid/arch/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getSource()Lorg/mozilla/focus/session/Source;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/mozilla/focus/session/Session;->source:Lorg/mozilla/focus/session/Source;

    return-object v0
.end method

.method public getUUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lorg/mozilla/focus/session/Session;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Lorg/mozilla/focus/architecture/NonNullLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/mozilla/focus/architecture/NonNullLiveData",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lorg/mozilla/focus/session/Session;->url:Lorg/mozilla/focus/architecture/NonNullMutableLiveData;

    return-object v0
.end method

.method public getWebViewState()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lorg/mozilla/focus/session/Session;->webviewState:Landroid/os/Bundle;

    return-object v0
.end method

.method public hasWebViewState()Z
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lorg/mozilla/focus/session/Session;->webviewState:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBlockingEnabled()Z
    .locals 1

    .prologue
    .line 188
    iget-boolean v0, p0, Lorg/mozilla/focus/session/Session;->isBlockingEnabled:Z

    return v0
.end method

.method public isCustomTab()Z
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lorg/mozilla/focus/session/Session;->customTabConfig:Lorg/mozilla/focus/customtabs/CustomTabConfig;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRecorded()Z
    .locals 1

    .prologue
    .line 156
    iget-boolean v0, p0, Lorg/mozilla/focus/session/Session;->isRecorded:Z

    return v0
.end method

.method public isSameAs(Lorg/mozilla/focus/session/Session;)Z
    .locals 2
    .param p1, "session"    # Lorg/mozilla/focus/session/Session;

    .prologue
    .line 184
    iget-object v0, p0, Lorg/mozilla/focus/session/Session;->uuid:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/mozilla/focus/session/Session;->getUUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSearch()Z
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lorg/mozilla/focus/session/Session;->searchTerms:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public markAsRecorded()V
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/focus/session/Session;->isRecorded:Z

    .line 161
    return-void
.end method

.method public saveWebViewState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 136
    iput-object p1, p0, Lorg/mozilla/focus/session/Session;->webviewState:Landroid/os/Bundle;

    .line 137
    return-void
.end method

.method public setBlockingEnabled(Z)V
    .locals 0
    .param p1, "blockingEnabled"    # Z

    .prologue
    .line 192
    iput-boolean p1, p0, Lorg/mozilla/focus/session/Session;->isBlockingEnabled:Z

    .line 193
    return-void
.end method

.method setLoading(Z)V
    .locals 2
    .param p1, "loading"    # Z

    .prologue
    .line 116
    iget-object v0, p0, Lorg/mozilla/focus/session/Session;->loading:Lorg/mozilla/focus/architecture/NonNullMutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mozilla/focus/architecture/NonNullMutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 117
    return-void
.end method

.method setProgress(I)V
    .locals 2
    .param p1, "progress"    # I

    .prologue
    .line 84
    iget-object v0, p0, Lorg/mozilla/focus/session/Session;->progress:Lorg/mozilla/focus/architecture/NonNullMutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mozilla/focus/architecture/NonNullMutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 85
    return-void
.end method

.method public setRequestDesktopSite(Z)V
    .locals 0
    .param p1, "requestDesktopSite"    # Z

    .prologue
    .line 200
    iput-boolean p1, p0, Lorg/mozilla/focus/session/Session;->requestDesktopSite:Z

    .line 201
    return-void
.end method

.method public setSearchTerms(Ljava/lang/String;)V
    .locals 0
    .param p1, "searchTerms"    # Ljava/lang/String;

    .prologue
    .line 168
    iput-object p1, p0, Lorg/mozilla/focus/session/Session;->searchTerms:Ljava/lang/String;

    .line 169
    return-void
.end method

.method setSecure(Z)V
    .locals 2
    .param p1, "secure"    # Z

    .prologue
    .line 92
    iget-object v0, p0, Lorg/mozilla/focus/session/Session;->secure:Lorg/mozilla/focus/architecture/NonNullMutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mozilla/focus/architecture/NonNullMutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 93
    return-void
.end method

.method setSecurityOrigin(Ljava/lang/String;)V
    .locals 1
    .param p1, "origin"    # Ljava/lang/String;

    .prologue
    .line 104
    iget-object v0, p0, Lorg/mozilla/focus/session/Session;->securityOrigin:Landroid/arch/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroid/arch/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 105
    return-void
.end method

.method setSecurityVerifier(Ljava/lang/String;)V
    .locals 1
    .param p1, "verifier"    # Ljava/lang/String;

    .prologue
    .line 100
    iget-object v0, p0, Lorg/mozilla/focus/session/Session;->securityVerifier:Landroid/arch/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroid/arch/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 101
    return-void
.end method

.method setTrackersBlocked(I)V
    .locals 2
    .param p1, "trackersBlocked"    # I

    .prologue
    .line 124
    iget-object v0, p0, Lorg/mozilla/focus/session/Session;->trackersBlocked:Lorg/mozilla/focus/architecture/NonNullMutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mozilla/focus/architecture/NonNullMutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 125
    return-void
.end method

.method setUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 76
    iget-object v0, p0, Lorg/mozilla/focus/session/Session;->url:Lorg/mozilla/focus/architecture/NonNullMutableLiveData;

    invoke-virtual {v0, p1}, Lorg/mozilla/focus/architecture/NonNullMutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 77
    return-void
.end method

.method public shouldRequestDesktopSite()Z
    .locals 1

    .prologue
    .line 196
    iget-boolean v0, p0, Lorg/mozilla/focus/session/Session;->requestDesktopSite:Z

    return v0
.end method

.method stripCustomTabConfiguration()V
    .locals 1

    .prologue
    .line 207
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/focus/session/Session;->customTabConfig:Lorg/mozilla/focus/customtabs/CustomTabConfig;

    .line 208
    return-void
.end method
