.class public Lcom/fsck/k9/K9$Intents$EmailReceived;
.super Ljava/lang/Object;
.source "K9.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/K9$Intents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmailReceived"
.end annotation


# static fields
.field public static final ACTION_EMAIL_DELETED:Ljava/lang/String; = "com.fsck.k9.intent.action.EMAIL_DELETED"

.field public static final ACTION_EMAIL_RECEIVED:Ljava/lang/String; = "com.fsck.k9.intent.action.EMAIL_RECEIVED"

.field public static final ACTION_REFRESH_OBSERVER:Ljava/lang/String; = "com.fsck.k9.intent.action.REFRESH_OBSERVER"

.field public static final EXTRA_ACCOUNT:Ljava/lang/String; = "com.fsck.k9.intent.extra.ACCOUNT"

.field public static final EXTRA_BCC:Ljava/lang/String; = "com.fsck.k9.intent.extra.BCC"

.field public static final EXTRA_CC:Ljava/lang/String; = "com.fsck.k9.intent.extra.CC"

.field public static final EXTRA_FOLDER:Ljava/lang/String; = "com.fsck.k9.intent.extra.FOLDER"

.field public static final EXTRA_FROM:Ljava/lang/String; = "com.fsck.k9.intent.extra.FROM"

.field public static final EXTRA_FROM_SELF:Ljava/lang/String; = "com.fsck.k9.intent.extra.FROM_SELF"

.field public static final EXTRA_SENT_DATE:Ljava/lang/String; = "com.fsck.k9.intent.extra.SENT_DATE"

.field public static final EXTRA_SUBJECT:Ljava/lang/String; = "com.fsck.k9.intent.extra.SUBJECT"

.field public static final EXTRA_TO:Ljava/lang/String; = "com.fsck.k9.intent.extra.TO"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
