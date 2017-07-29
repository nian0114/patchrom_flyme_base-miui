.class Lcom/android/settings_ex/eB;
.super Ljava/lang/Object;
.source "MiuiLocaleSettings.java"


# instance fields
.field displayName:Ljava/lang/String;

.field final synthetic rn:Lcom/android/settings_ex/MiuiLocaleSettings;

.field ro:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/MiuiLocaleSettings;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/settings_ex/eB;->rn:Lcom/android/settings_ex/MiuiLocaleSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/MiuiLocaleSettings;Lcom/android/settings_ex/ex;)V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0, p1}, Lcom/android/settings_ex/eB;-><init>(Lcom/android/settings_ex/MiuiLocaleSettings;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/settings_ex/eB;->displayName:Ljava/lang/String;

    return-object v0
.end method
