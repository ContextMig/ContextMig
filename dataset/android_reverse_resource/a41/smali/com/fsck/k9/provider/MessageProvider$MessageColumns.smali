.class public interface abstract Lcom/fsck/k9/provider/MessageProvider$MessageColumns;
.super Ljava/lang/Object;
.source "MessageProvider.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/provider/MessageProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MessageColumns"
.end annotation


# static fields
.field public static final ACCOUNT:Ljava/lang/String; = "account"

.field public static final ACCOUNT_COLOR:Ljava/lang/String; = "accountColor"

.field public static final ACCOUNT_NUMBER:Ljava/lang/String; = "accountNumber"

.field public static final DELETE_URI:Ljava/lang/String; = "delUri"

.field public static final HAS_ATTACHMENTS:Ljava/lang/String; = "hasAttachments"

.field public static final HAS_STAR:Ljava/lang/String; = "hasStar"

.field public static final INCREMENT:Ljava/lang/String; = "id"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PREVIEW:Ljava/lang/String; = "preview"

.field public static final SENDER:Ljava/lang/String; = "sender"

.field public static final SENDER_ADDRESS:Ljava/lang/String; = "senderAddress"

.field public static final SEND_DATE:Ljava/lang/String; = "date"

.field public static final SUBJECT:Ljava/lang/String; = "subject"

.field public static final UNREAD:Ljava/lang/String; = "unread"

.field public static final URI:Ljava/lang/String; = "uri"
