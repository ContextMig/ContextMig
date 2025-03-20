.class public interface abstract Lcom/fsck/k9/message/MessageBuilder$Callback;
.super Ljava/lang/Object;
.source "MessageBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/message/MessageBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onMessageBuildCancel()V
.end method

.method public abstract onMessageBuildException(Lcom/fsck/k9/mail/MessagingException;)V
.end method

.method public abstract onMessageBuildReturnPendingIntent(Landroid/app/PendingIntent;I)V
.end method

.method public abstract onMessageBuildSuccess(Lcom/fsck/k9/mail/internet/MimeMessage;Z)V
.end method
