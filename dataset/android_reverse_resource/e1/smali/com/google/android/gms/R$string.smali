.class public final Lcom/google/android/gms/R$string;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "string"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final common_google_play_services_enable_button:I = 0x7f080013

.field public static final common_google_play_services_enable_text:I = 0x7f080014

.field public static final common_google_play_services_enable_title:I = 0x7f080015

.field public static final common_google_play_services_install_button:I = 0x7f080016

.field public static final common_google_play_services_install_text:I = 0x7f080017

.field public static final common_google_play_services_install_title:I = 0x7f080018

.field public static final common_google_play_services_notification_ticker:I = 0x7f080019

.field public static final common_google_play_services_unknown_issue:I = 0x7f08001a

.field public static final common_google_play_services_unsupported_text:I = 0x7f08001b

.field public static final common_google_play_services_update_button:I = 0x7f08001c

.field public static final common_google_play_services_update_text:I = 0x7f08001d

.field public static final common_google_play_services_update_title:I = 0x7f08001e

.field public static final common_google_play_services_updating_text:I = 0x7f08001f

.field public static final common_google_play_services_wear_update_text:I = 0x7f080020

.field public static final common_open_on_phone:I = 0x7f080021

.field public static final common_signin_button_text:I = 0x7f080022

.field public static final common_signin_button_text_long:I = 0x7f080023


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/google/android/gms/R$string;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x4781f3bb583df95aL    # 2.982800483352719E36

    const-string v2, "com/google/android/gms/R$string"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/R$string;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/google/android/gms/R$string;->$jacocoInit()[Z

    move-result-object v0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
