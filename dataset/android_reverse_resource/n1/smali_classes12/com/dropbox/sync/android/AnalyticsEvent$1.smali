.class final Lcom/dropbox/sync/android/AnalyticsEvent$1;
.super Ljava/lang/Object;
.source "AnalyticsEvent.java"

# interfaces
.implements Lcom/dropbox/sync/android/AnalyticsEvent$LedgerProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dropbox/sync/android/AnalyticsEvent;->defaultLedgerProvider()Lcom/dropbox/sync/android/AnalyticsEvent$LedgerProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Lcom/dropbox/sync/android/DbxAccount;)Lcom/dropbox/ledger/android/Ledger;
    .locals 1
    .param p1, "acct"    # Lcom/dropbox/sync/android/DbxAccount;

    .prologue
    .line 56
    invoke-virtual {p1}, Lcom/dropbox/sync/android/DbxAccount;->getCoreAccountManager()Lcom/dropbox/sync/android/CoreAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/sync/android/CoreAccountManager;->getLedger()Lcom/dropbox/ledger/android/Ledger;

    move-result-object v0

    return-object v0
.end method

.method public get(Lcom/dropbox/sync/android/DbxAccountManager;)Lcom/dropbox/ledger/android/Ledger;
    .locals 1
    .param p1, "acctMgr"    # Lcom/dropbox/sync/android/DbxAccountManager;

    .prologue
    .line 51
    invoke-virtual {p1}, Lcom/dropbox/sync/android/DbxAccountManager;->getAccountManager()Lcom/dropbox/sync/android/CoreAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/sync/android/CoreAccountManager;->getLedger()Lcom/dropbox/ledger/android/Ledger;

    move-result-object v0

    return-object v0
.end method
