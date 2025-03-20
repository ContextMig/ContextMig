.class interface abstract Lcom/dropbox/sync/android/AnalyticsEvent$LedgerProvider;
.super Ljava/lang/Object;
.source "AnalyticsEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/sync/android/AnalyticsEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LedgerProvider"
.end annotation


# virtual methods
.method public abstract get(Lcom/dropbox/sync/android/DbxAccount;)Lcom/dropbox/ledger/android/Ledger;
.end method

.method public abstract get(Lcom/dropbox/sync/android/DbxAccountManager;)Lcom/dropbox/ledger/android/Ledger;
.end method
