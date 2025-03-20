.class public final Lorg/mozilla/focus/whatsnew/WhatsNewStorage$Companion;
.super Ljava/lang/Object;
.source "WhatsNewStorage.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/focus/whatsnew/WhatsNewStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lorg/mozilla/focus/whatsnew/WhatsNewStorage$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lorg/mozilla/focus/whatsnew/WhatsNewStorage$Companion;

    invoke-direct {v0}, Lorg/mozilla/focus/whatsnew/WhatsNewStorage$Companion;-><init>()V

    sput-object v0, Lorg/mozilla/focus/whatsnew/WhatsNewStorage$Companion;->$$INSTANCE:Lorg/mozilla/focus/whatsnew/WhatsNewStorage$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
