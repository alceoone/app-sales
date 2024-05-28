<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\User;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;

class UserRolesPermissionsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
         // Pastikan izin sudah ada dengan menjalankan RolesAndPermissionsSeeder terlebih dahulu
         $this->call(RolesAndPermissionsSeeder::class);

         // Assign peran dan izin spesifik ke pengguna
         $superAdmin = User::create([
             'name' => 'Super Admin',
             'email' => 'superadmin@example.com',
             'password' => bcrypt('password')
         ]);
         $superAdmin->assignRole('super admin');
 
         $admin1 = User::create([
             'name' => 'Admin 1',
             'email' => 'admin1@example.com',
             'password' => bcrypt('password')
         ]);
         $admin1->assignRole('admin');
         $admin1->givePermissionTo(['edit articles', 'view reports']);
 
         $admin2 = User::create([
             'name' => 'Admin 2',
             'email' => 'admin2@example.com',
             'password' => bcrypt('password')
         ]);
         $admin2->assignRole('admin');
         $admin2->givePermissionTo(['delete articles', 'publish articles']);
 
         $user1 = User::create([
             'name' => 'User 1',
             'email' => 'user1@example.com',
             'password' => bcrypt('password')
         ]);
         $user1->assignRole('user');
         $user1->givePermissionTo('publish articles');
 
         $user2 = User::create([
             'name' => 'User 2',
             'email' => 'user2@example.com',
             'password' => bcrypt('password')
         ]);
         $user2->assignRole('user');
         $user2->givePermissionTo('view reports');
    }
}
