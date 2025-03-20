.class public interface abstract Lcom/fsck/k9/mail/oauth/OAuth2TokenProvider$OAuth2TokenProviderAuthCallback;
.super Ljava/lang/Object;
.source "OAuth2TokenProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/mail/oauth/OAuth2TokenProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OAuth2TokenProviderAuthCallback"
.end annotation


# virtual methods
.method public abstract failure(Lcom/fsck/k9/mail/oauth/AuthorizationException;)V
.end method

.method public abstract success()V
.end method
