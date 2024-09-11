-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 11, 2024 at 05:03 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `todo-list`
--

-- --------------------------------------------------------

--
-- Table structure for table `todos`
--

CREATE TABLE `todos` (
  `id` int(11) NOT NULL,
  `task` varchar(38) NOT NULL,
  `description` varchar(82) NOT NULL,
  `status` varchar(11) NOT NULL,
  `priority` varchar(6) NOT NULL,
  `due_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `todos`
--

INSERT INTO `todos` (`id`, `task`, `description`, `status`, `priority`, `due_date`) VALUES
(1, 'Set up React development environment', 'Install Node.js, create a new React app using Create React App', 'Not Started', 'High', '2024-09-15'),
(2, 'Learn React components', 'Understand functional and class components, props, and state', 'In Progress', 'High', '2024-09-20'),
(3, 'Master React Hooks', 'Study useState, useEffect, useContext, and custom hooks', 'Not Started', 'Medium', '2024-09-25'),
(4, 'Explore React Router', 'Learn how to implement client-side routing in React applications', 'Not Started', 'Medium', '2024-09-30'),
(5, 'Study React state management', 'Compare and contrast Redux, MobX, and React Context API', 'Not Started', 'High', '2024-10-05'),
(6, 'Set up Vue.js development environment', 'Install Vue CLI and create a new Vue project', 'Not Started', 'High', '2024-10-10'),
(7, 'Learn Vue.js basics', 'Study Vue instance, templates, and directives', 'Not Started', 'High', '2024-10-15'),
(8, 'Master Vue components', 'Understand component registration, props, and events', 'Not Started', 'Medium', '2024-10-20'),
(9, 'Explore Vue Router', 'Implement navigation and routing in Vue applications', 'Not Started', 'Medium', '2024-10-25'),
(10, 'Study Vuex for state management', 'Learn about state, getters, mutations, and actions in Vuex', 'Not Started', 'High', '2024-10-30'),
(11, 'Set up Angular development environment', 'Install Angular CLI and create a new Angular project', 'Not Started', 'High', '2024-11-05'),
(12, 'Learn Angular basics', 'Study modules, components, and templates', 'Not Started', 'High', '2024-11-10'),
(13, 'Master Angular directives', 'Understand built-in directives and create custom directives', 'Not Started', 'Medium', '2024-11-15'),
(14, 'Explore Angular services', 'Learn dependency injection and create services for data sharing', 'Not Started', 'Medium', '2024-11-20'),
(15, 'Study Angular routing', 'Implement navigation and routing in Angular applications', 'Not Started', 'High', '2024-11-25'),
(16, 'Set up Svelte development environment', 'Create a new Svelte project using the template', 'Not Started', 'High', '2024-11-30'),
(17, 'Learn Svelte basics', 'Study components, reactivity, and props', 'Not Started', 'High', '2024-12-05'),
(18, 'Master Svelte stores', 'Understand writable, readable, and derived stores', 'Not Started', 'Medium', '2024-12-10'),
(19, 'Explore Svelte animations', 'Learn how to add smooth transitions and animations', 'Not Started', 'Low', '2024-12-15'),
(20, 'Study SvelteKit', 'Learn about server-side rendering and routing with SvelteKit', 'Not Started', 'Medium', '2024-12-20'),
(21, 'Compare React and Vue', 'Analyze pros and cons of React vs Vue for different project types', 'Not Started', 'Medium', '2024-12-25'),
(22, 'Build a todo app with React', 'Apply React knowledge to create a functional todo application', 'Not Started', 'High', '2024-12-30'),
(23, 'Implement authentication in Vue', 'Add user registration and login functionality to a Vue app', 'Not Started', 'High', '2025-01-05'),
(24, 'Create a blog with Angular', 'Develop a simple blog application using Angular and a backend API', 'Not Started', 'Medium', '2025-01-10'),
(25, 'Explore Next.js', 'Learn about server-side rendering and static site generation with Next.js', 'Not Started', 'High', '2025-01-15'),
(26, 'Study Nuxt.js', 'Understand server-side rendering and static site generation in Vue with Nuxt.js', 'Not Started', 'Medium', '2025-01-20'),
(27, 'Learn GraphQL basics', 'Understand GraphQL syntax, queries, and mutations', 'Not Started', 'Medium', '2025-01-25'),
(28, 'Implement GraphQL in React', 'Use Apollo Client to integrate GraphQL in a React application', 'Not Started', 'High', '2025-01-30'),
(29, 'Explore Vue 3 Composition API', 'Learn the new Composition API and refactor a Vue 2 app to Vue 3', 'Not Started', 'High', '2025-02-05'),
(30, 'Study React Server Components', 'Understand the concept and implementation of React Server Components', 'Not Started', 'Medium', '2025-02-10'),
(31, 'Learn Typescript basics', 'Study Typescript syntax, types, and integration with JavaScript', 'Not Started', 'High', '2025-02-15'),
(32, 'Implement Typescript in React', 'Convert a React project to use Typescript', 'Not Started', 'High', '2025-02-20'),
(33, 'Explore React Native', 'Learn the basics of mobile app development with React Native', 'Not Started', 'Medium', '2025-02-25'),
(34, 'Study Vue Native', 'Understand mobile app development using Vue Native', 'Not Started', 'Low', '2025-03-02'),
(35, 'Learn about PWAs', 'Understand Progressive Web Apps and their implementation', 'Not Started', 'Medium', '2025-03-07'),
(36, 'Implement PWA features in React', 'Add offline support and push notifications to a React app', 'Not Started', 'High', '2025-03-12'),
(37, 'Explore Svelte animations', 'Learn and implement various animation techniques in Svelte', 'Not Started', 'Low', '2025-03-17'),
(38, 'Study React performance optimization', 'Learn techniques like memoization, lazy loading, and code splitting', 'Not Started', 'High', '2025-03-22'),
(39, 'Implement SSR in Vue', 'Set up server-side rendering in a Vue application', 'Not Started', 'Medium', '2025-03-27'),
(40, 'Learn about microfrontends', 'Understand the concept and implementation of microfrontends', 'Not Started', 'Medium', '2025-04-01'),
(41, 'Explore state machines in React', 'Learn about XState and implement it in a React application', 'Not Started', 'Low', '2025-04-06'),
(42, 'Study Vue testing', 'Learn and implement unit and integration tests in Vue', 'Not Started', 'High', '2025-04-11'),
(43, 'Implement Cypress for e2e testing', 'Set up and write end-to-end tests using Cypress', 'Not Started', 'Medium', '2025-04-16'),
(44, 'Learn about WebAssembly', 'Understand WebAssembly and its integration with JavaScript', 'Not Started', 'Low', '2025-04-21'),
(45, 'Explore React 18 features', 'Study and implement new features introduced in React 18', 'Not Started', 'High', '2025-04-26'),
(46, 'Implement Vuex 4 in Vue 3', 'Update a Vue 3 application to use Vuex 4 for state management', 'Not Started', 'Medium', '2025-05-01'),
(47, 'Study Angular Universal', 'Learn about server-side rendering in Angular with Angular Universal', 'Not Started', 'Medium', '2025-05-06'),
(48, 'Explore Svelte stores', 'Implement and use various types of stores in Svelte', 'Not Started', 'Medium', '2025-05-11'),
(49, 'Learn about Web Components', 'Understand Web Components and their use with frameworks', 'Not Started', 'Low', '2025-05-16'),
(50, 'Build a full-stack JavaScript app', 'Create an application using Node.js backend and a framework of choice for frontend', 'Not Started', 'High', '2025-05-21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `todos`
--
ALTER TABLE `todos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `todos`
--
ALTER TABLE `todos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
