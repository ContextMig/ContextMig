.class Lchan/android/app/pocketnote/MainActivity$NavigationDrawerItemConstants;
.super Ljava/lang/Object;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lchan/android/app/pocketnote/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NavigationDrawerItemConstants"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final CALENDAR_ID:I = 0x64

.field public static final CALENDAR_NAME:Ljava/lang/String; = "Calendar"

.field public static final NOTES_ID:I = 0x63

.field public static final NOTES_NAME:Ljava/lang/String; = "Notes"

.field public static final SETTINGS_ID:I = 0x66

.field public static final SETTINGS_NAME:Ljava/lang/String; = "Settings"

.field public static final TRASH_ID:I = 0x65

.field public static final TRASH_NAME:Ljava/lang/String; = "Trash"


# instance fields
.field final synthetic this$0:Lchan/android/app/pocketnote/MainActivity;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/MainActivity$NavigationDrawerItemConstants;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x67013df8f7adeb1fL    # 1.5004342461145448E188

    const-string v2, "chan/android/app/pocketnote/MainActivity$NavigationDrawerItemConstants"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/MainActivity$NavigationDrawerItemConstants;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method private constructor <init>(Lchan/android/app/pocketnote/MainActivity;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/MainActivity$NavigationDrawerItemConstants;->$jacocoInit()[Z

    move-result-object v0

    .line 328
    iput-object p1, p0, Lchan/android/app/pocketnote/MainActivity$NavigationDrawerItemConstants;->this$0:Lchan/android/app/pocketnote/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    aput-boolean v3, v0, v1

    .line 329
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Constructor is private!"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    aput-boolean v3, v0, v3

    throw v1
.end method
