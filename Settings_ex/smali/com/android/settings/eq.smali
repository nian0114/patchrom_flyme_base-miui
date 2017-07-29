.class Lcom/android/settings_ex/eq;
.super Ljava/lang/Object;
.source "MiuiDisplaySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic qH:Lcom/android/settings_ex/MiuiDisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/MiuiDisplaySettings;)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lcom/android/settings_ex/eq;->qH:Lcom/android/settings_ex/MiuiDisplaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/settings_ex/eq;->qH:Lcom/android/settings_ex/MiuiDisplaySettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings_ex/MiuiDisplaySettings;->a(Lcom/android/settings_ex/MiuiDisplaySettings;Z)V

    .line 259
    return-void
.end method
