.class public interface abstract Lorg/mozilla/focus/whatsnew/WhatsNewStorage;
.super Ljava/lang/Object;
.source "WhatsNewStorage.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/focus/whatsnew/WhatsNewStorage$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/mozilla/focus/whatsnew/WhatsNewStorage$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/mozilla/focus/whatsnew/WhatsNewStorage$Companion;->$$INSTANCE:Lorg/mozilla/focus/whatsnew/WhatsNewStorage$Companion;

    sput-object v0, Lorg/mozilla/focus/whatsnew/WhatsNewStorage;->Companion:Lorg/mozilla/focus/whatsnew/WhatsNewStorage$Companion;

    return-void
.end method


# virtual methods
.method public abstract getSessionCounter()I
.end method

.method public abstract getVersion()Lorg/mozilla/focus/whatsnew/WhatsNewVersion;
.end method

.method public abstract setSessionCounter(I)V
.end method

.method public abstract setVersion(Lorg/mozilla/focus/whatsnew/WhatsNewVersion;)V
.end method
