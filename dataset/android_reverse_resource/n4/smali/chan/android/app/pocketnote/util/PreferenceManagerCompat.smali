.class public Lchan/android/app/pocketnote/util/PreferenceManagerCompat;
.super Ljava/lang/Object;
.source "PreferenceManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lchan/android/app/pocketnote/util/PreferenceManagerCompat$OnPreferenceTreeClickListener;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z

.field private static final TAG:Ljava/lang/String;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/util/PreferenceManagerCompat;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x853fd183ecc816cL

    const-string v2, "chan/android/app/pocketnote/util/PreferenceManagerCompat"

    const/16 v3, 0x39

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/util/PreferenceManagerCompat;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/util/PreferenceManagerCompat;->$jacocoInit()[Z

    move-result-object v0

    .line 15
    const-class v1, Lchan/android/app/pocketnote/util/PreferenceManagerCompat;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lchan/android/app/pocketnote/util/PreferenceManagerCompat;->TAG:Ljava/lang/String;

    const/16 v1, 0x38

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/util/PreferenceManagerCompat;->$jacocoInit()[Z

    move-result-object v0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static dispatchActivityDestroy(Landroid/preference/PreferenceManager;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/util/PreferenceManagerCompat;->$jacocoInit()[Z

    move-result-object v1

    .line 167
    :try_start_0
    const-class v0, Landroid/preference/PreferenceManager;

    const-string v2, "dispatchActivityDestroy"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/16 v2, 0x2d

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    .line 168
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/16 v2, 0x2e

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    .line 169
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    const/16 v0, 0x2f

    aput-boolean v4, v1, v0

    .line 173
    :goto_0
    const/16 v0, 0x32

    aput-boolean v4, v1, v0

    return-void

    .line 170
    :catch_0
    move-exception v0

    const/16 v2, 0x30

    aput-boolean v4, v1, v2

    .line 171
    sget-object v2, Lchan/android/app/pocketnote/util/PreferenceManagerCompat;->TAG:Ljava/lang/String;

    const-string v3, "Couldn\'t call PreferenceManager.dispatchActivityDestroy by reflection"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v0, 0x31

    aput-boolean v4, v1, v0

    goto :goto_0
.end method

.method static dispatchActivityResult(Landroid/preference/PreferenceManager;IILandroid/content/Intent;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/util/PreferenceManagerCompat;->$jacocoInit()[Z

    move-result-object v1

    .line 139
    :try_start_0
    const-class v0, Landroid/preference/PreferenceManager;

    const-string v2, "dispatchActivityResult"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-class v5, Landroid/content/Intent;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/16 v2, 0x21

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    .line 140
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/16 v2, 0x22

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    .line 141
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    const/16 v0, 0x23

    aput-boolean v6, v1, v0

    .line 145
    :goto_0
    const/16 v0, 0x26

    aput-boolean v6, v1, v0

    return-void

    .line 142
    :catch_0
    move-exception v0

    const/16 v2, 0x24

    aput-boolean v6, v1, v2

    .line 143
    sget-object v2, Lchan/android/app/pocketnote/util/PreferenceManagerCompat;->TAG:Ljava/lang/String;

    const-string v3, "Couldn\'t call PreferenceManager.dispatchActivityResult by reflection"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v0, 0x25

    aput-boolean v6, v1, v0

    goto :goto_0
.end method

.method static dispatchActivityStop(Landroid/preference/PreferenceManager;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/util/PreferenceManagerCompat;->$jacocoInit()[Z

    move-result-object v1

    .line 153
    :try_start_0
    const-class v0, Landroid/preference/PreferenceManager;

    const-string v2, "dispatchActivityStop"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/16 v2, 0x27

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    .line 154
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/16 v2, 0x28

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    .line 155
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    const/16 v0, 0x29

    aput-boolean v4, v1, v0

    .line 159
    :goto_0
    const/16 v0, 0x2c

    aput-boolean v4, v1, v0

    return-void

    .line 156
    :catch_0
    move-exception v0

    const/16 v2, 0x2a

    aput-boolean v4, v1, v2

    .line 157
    sget-object v2, Lchan/android/app/pocketnote/util/PreferenceManagerCompat;->TAG:Ljava/lang/String;

    const-string v3, "Couldn\'t call PreferenceManager.dispatchActivityStop by reflection"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v0, 0x2b

    aput-boolean v4, v1, v0

    goto :goto_0
.end method

.method static getPreferenceScreen(Landroid/preference/PreferenceManager;)Landroid/preference/PreferenceScreen;
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/util/PreferenceManagerCompat;->$jacocoInit()[Z

    move-result-object v1

    .line 125
    :try_start_0
    const-class v0, Landroid/preference/PreferenceManager;

    const-string v2, "getPreferenceScreen"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/16 v2, 0x1c

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    .line 126
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/16 v2, 0x1d

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    .line 127
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x1e

    aput-boolean v4, v1, v2

    .line 131
    :goto_0
    return-object v0

    .line 128
    :catch_0
    move-exception v0

    const/16 v2, 0x1f

    aput-boolean v4, v1, v2

    .line 129
    sget-object v2, Lchan/android/app/pocketnote/util/PreferenceManagerCompat;->TAG:Ljava/lang/String;

    const-string v3, "Couldn\'t call PreferenceManager.getPreferenceScreen by reflection"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 131
    const/4 v0, 0x0

    const/16 v2, 0x20

    aput-boolean v4, v1, v2

    goto :goto_0
.end method

.method static inflateFromIntent(Landroid/preference/PreferenceManager;Landroid/content/Intent;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;
    .locals 8

    .prologue
    const/4 v7, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/util/PreferenceManagerCompat;->$jacocoInit()[Z

    move-result-object v2

    .line 85
    :try_start_0
    const-class v1, Landroid/preference/PreferenceManager;

    const-string v3, "inflateFromIntent"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Intent;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Landroid/preference/PreferenceScreen;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/16 v3, 0x12

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    .line 86
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/16 v3, 0x13

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    .line 87
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .local v0, "prefScreen":Landroid/preference/PreferenceScreen;
    const/16 v1, 0x14

    aput-boolean v7, v2, v1

    .line 92
    .end local v0    # "prefScreen":Landroid/preference/PreferenceScreen;
    :goto_0
    return-object v0

    .line 89
    :catch_0
    move-exception v1

    const/16 v3, 0x15

    aput-boolean v7, v2, v3

    .line 90
    sget-object v3, Lchan/android/app/pocketnote/util/PreferenceManagerCompat;->TAG:Ljava/lang/String;

    const-string v4, "Couldn\'t call PreferenceManager.inflateFromIntent by reflection"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    const/4 v0, 0x0

    const/16 v1, 0x16

    aput-boolean v7, v2, v1

    goto :goto_0
.end method

.method static inflateFromResource(Landroid/preference/PreferenceManager;Landroid/app/Activity;ILandroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;
    .locals 8

    .prologue
    const/4 v7, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/util/PreferenceManagerCompat;->$jacocoInit()[Z

    move-result-object v2

    .line 108
    :try_start_0
    const-class v1, Landroid/preference/PreferenceManager;

    const-string v3, "inflateFromResource"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-class v6, Landroid/preference/PreferenceScreen;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/16 v3, 0x17

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    .line 109
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/16 v3, 0x18

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    .line 110
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .local v0, "prefScreen":Landroid/preference/PreferenceScreen;
    const/16 v1, 0x19

    aput-boolean v7, v2, v1

    .line 115
    .end local v0    # "prefScreen":Landroid/preference/PreferenceScreen;
    :goto_0
    return-object v0

    .line 112
    :catch_0
    move-exception v1

    const/16 v3, 0x1a

    aput-boolean v7, v2, v3

    .line 113
    sget-object v3, Lchan/android/app/pocketnote/util/PreferenceManagerCompat;->TAG:Ljava/lang/String;

    const-string v4, "Couldn\'t call PreferenceManager.inflateFromResource by reflection"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 115
    const/4 v0, 0x0

    const/16 v1, 0x1b

    aput-boolean v7, v2, v1

    goto :goto_0
.end method

.method static newInstance(Landroid/app/Activity;I)Landroid/preference/PreferenceManager;
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/util/PreferenceManagerCompat;->$jacocoInit()[Z

    move-result-object v1

    .line 19
    :try_start_0
    const-class v0, Landroid/preference/PreferenceManager;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/app/Activity;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    .line 20
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    .line 21
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x3

    aput-boolean v5, v1, v2

    .line 25
    :goto_0
    return-object v0

    .line 22
    :catch_0
    move-exception v0

    const/4 v2, 0x4

    aput-boolean v5, v1, v2

    .line 23
    sget-object v2, Lchan/android/app/pocketnote/util/PreferenceManagerCompat;->TAG:Ljava/lang/String;

    const-string v3, "Couldn\'t call constructor PreferenceManager by reflection"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 25
    const/4 v0, 0x0

    const/4 v2, 0x5

    aput-boolean v5, v1, v2

    goto :goto_0
.end method

.method static setFragment(Landroid/preference/PreferenceManager;Lchan/android/app/pocketnote/util/PreferenceFragment;)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/util/PreferenceManagerCompat;->$jacocoInit()[Z

    move-result-object v0

    .line 33
    const/4 v1, 0x6

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static setOnPreferenceTreeClickListener(Landroid/preference/PreferenceManager;Lchan/android/app/pocketnote/util/PreferenceManagerCompat$OnPreferenceTreeClickListener;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/util/PreferenceManagerCompat;->$jacocoInit()[Z

    move-result-object v1

    .line 43
    :try_start_0
    const-class v0, Landroid/preference/PreferenceManager;

    const-string v2, "mOnPreferenceTreeClickListener"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x7

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    .line 44
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 45
    if-eqz p1, :cond_0

    .line 46
    const/16 v2, 0x8

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    .line 47
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const/16 v5, 0x9

    const/4 v6, 0x1

    aput-boolean v6, v1, v5

    .line 48
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v3, v4

    new-instance v4, Lchan/android/app/pocketnote/util/PreferenceManagerCompat$1;

    invoke-direct {v4, p1}, Lchan/android/app/pocketnote/util/PreferenceManagerCompat$1;-><init>(Lchan/android/app/pocketnote/util/PreferenceManagerCompat$OnPreferenceTreeClickListener;)V

    const/16 v5, 0xa

    const/4 v6, 0x1

    aput-boolean v6, v1, v5

    .line 46
    invoke-static {v2, v3, v4}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v2

    const/16 v3, 0xb

    const/4 v4, 0x1

    aput-boolean v4, v1, v3

    .line 59
    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 60
    const/16 v0, 0xc

    const/4 v2, 0x1

    aput-boolean v2, v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    const/16 v0, 0xe

    aput-boolean v7, v1, v0

    .line 66
    :goto_1
    const/16 v0, 0x11

    aput-boolean v7, v1, v0

    return-void

    .line 61
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v0, 0xd

    const/4 v2, 0x1

    aput-boolean v2, v1, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    const/16 v2, 0xf

    aput-boolean v7, v1, v2

    .line 64
    sget-object v2, Lchan/android/app/pocketnote/util/PreferenceManagerCompat;->TAG:Ljava/lang/String;

    const-string v3, "Couldn\'t set PreferenceManager.mOnPreferenceTreeClickListener by reflection"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v0, 0x10

    aput-boolean v7, v1, v0

    goto :goto_1
.end method

.method static setPreferences(Landroid/preference/PreferenceManager;Landroid/preference/PreferenceScreen;)Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/util/PreferenceManagerCompat;->$jacocoInit()[Z

    move-result-object v2

    .line 183
    :try_start_0
    const-class v0, Landroid/preference/PreferenceManager;

    const-string v3, "setPreferences"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/preference/PreferenceScreen;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/16 v3, 0x33

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    .line 184
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/16 v3, 0x34

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    .line 185
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    const/16 v1, 0x35

    aput-boolean v7, v2, v1

    .line 189
    :goto_0
    return v0

    .line 186
    :catch_0
    move-exception v0

    const/16 v3, 0x36

    aput-boolean v7, v2, v3

    .line 187
    sget-object v3, Lchan/android/app/pocketnote/util/PreferenceManagerCompat;->TAG:Ljava/lang/String;

    const-string v4, "Couldn\'t call PreferenceManager.setPreferences by reflection"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 189
    const/16 v0, 0x37

    aput-boolean v7, v2, v0

    move v0, v1

    goto :goto_0
.end method
