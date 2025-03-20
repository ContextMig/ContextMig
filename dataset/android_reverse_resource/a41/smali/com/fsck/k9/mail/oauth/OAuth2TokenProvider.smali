.class public interface abstract Lcom/fsck/k9/mail/oauth/OAuth2TokenProvider;
.super Ljava/lang/Object;
.source "OAuth2TokenProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/mail/oauth/OAuth2TokenProvider$OAuth2TokenProviderAuthCallback;
    }
.end annotation


# static fields
.field public static final OAUTH2_TIMEOUT:I = 0x7530


# virtual methods
.method public abstract authorizeApi(Ljava/lang/String;Landroid/app/Activity;Lcom/fsck/k9/mail/oauth/OAuth2TokenProvider$OAuth2TokenProviderAuthCallback;)V
.end method

.method public abstract getAccounts()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getToken(Ljava/lang/String;J)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/AuthenticationFailedException;
        }
    .end annotation
.end method

.method public abstract invalidateToken(Ljava/lang/String;)V
.end method
